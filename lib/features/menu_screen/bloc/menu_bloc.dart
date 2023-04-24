import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant_client/features/menu_screen/domain/product_category.dart';
import 'package:restaurant_client/features/menu_screen/domain/products_repository.dart';
import 'package:restaurant_client/main.dart';

part 'menu_bloc.freezed.dart';
part 'menu_event.dart';
part 'menu_state.dart';

class MenuBloc extends Bloc<MenuEvent, MenuState> {
  final productsRepository = getIt<ProductsRepository>();

  MenuBloc() : super(const _Loading()) {
    on<MenuEvent>((event, emit) async {
      await event.when(
        started: () async {
          final categories = await productsRepository.getCategories();
          emit(
            MenuState.ready(categories),
          );
        },
      );
      // Категории храним на уровне приложения а не экрана, так что за стейт отвечает репозиторий.
    });
  }
}
