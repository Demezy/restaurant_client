import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:restaurant_client/features/menu_screen/domain/product_category.dart';
import 'package:restaurant_client/features/menu_screen/domain/products_repository.dart';
import 'package:restaurant_client/features/product_details_view/domain/product_details.dart';
import 'package:restaurant_client/main.dart';

typedef Json = Map<String, dynamic>;

class ProductsRepositoryDio implements ProductsRepository {
  // Все кроме одной картинки не доступны (авторизация или это что-то внутреннее?).
  // Этот параметр поменит все ссылки на единсвенную рабочую.
  final bool useDummyImage;

  // Это храним в hive, isar или другой БД, по требованию к проекту.
  // Чтобы не чистить каждый раз приложение для просмотра анимации загрузки оставил в памяти.
  final Dio dio = getIt.get<Dio>();
  final List<ProductCategory> _state = [];

  ProductsRepositoryDio({this.useDummyImage = false});

  @override
  Future<List<ProductCategory>> getCategories() async {
    if (_state.isNotEmpty) {
      return _state;
    }
    // кажется, сервер не ставит mimetype, поэтому дио трактует ответ как строку и декодим сами
    final response = await dio.get<String>(
      'https://gist.githubusercontent.com/moisey312/10b304f7b00ffd17535604f4b38ebe6a/raw/a9e1f131b123aac1d5661215ba54ed164296e866/test.json',
    );
    if (response.statusCode != 200 || response.data == null) {
      throw Exception('Failed to load products');
    }
    final categoryList = (jsonDecode(response.data!) as List)
        // ignore: unnecessary_lambdas, avoid_annotating_with_dynamic
        .map((dynamic i) => ProductCategory.fromJson(i as Json))
        .toList();

    await setState(categoryList);
    return categoryList;
  }

  @override
  Future<List<ProductDetails>?> getProductsFromCategory(int categoryId) async {
    final categories = await getCategories();
    for (final category in categories) {
      if (category.id == categoryId) {
        return category.products;
      }
    }
    return null;
  }

  Future<void> setState(List<ProductCategory> state) async {
    if (!useDummyImage) {
      _state
        ..clear()
        ..addAll(state);
      return;
    }
    _state
      ..clear()
      ..addAll(
        state.map(
          (category) => category.copyWith(
            products: category.products
                .map(
                  (product) => product.copyWith(
                    imageUrl:
                        'https://storage.yandexcloud.net/cdn-staging/cache/2d/84/2d8405868a9aa904937cdd9c6379e3f0.png',
                  ),
                )
                .toList(),
          ),
        ),
      );
  }
}
