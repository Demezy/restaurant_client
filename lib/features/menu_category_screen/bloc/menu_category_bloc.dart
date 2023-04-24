import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant_client/features/menu_screen/domain/products_repository.dart';
import 'package:restaurant_client/features/product_details_view/domain/product_details.dart';
import 'package:restaurant_client/main.dart';

part 'menu_category_bloc.freezed.dart';
part 'menu_category_event.dart';
part 'menu_category_state.dart';

class MenuCategoryBloc extends Bloc<MenuCategoryEvent, MenuCategoryState> {
  final ProductsRepository productsRepository = getIt<ProductsRepository>();
  final int categoryId;
  
  MenuCategoryBloc({required this.categoryId}) : super(const _Loading()) {
    on<MenuCategoryEvent>(
      (event, emit) {
        event.when(
          started: () async {
            emit(const _Loading());
            final menu =
                await productsRepository.getProductsFromCategory(categoryId);
            if (menu == null) {
              emit(
                const _Error(message: 'Не удалось загрузить категорию меню'),
              );
              return;
            }
            emit(
              _Ready(menu: menu),
            );
          },
        );
      },
    );
  }
}
