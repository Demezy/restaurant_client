import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant_client/features/cart_screen/domain/cart_repository.dart';
import 'package:restaurant_client/features/product_details_view/domain/product_details.dart';
import 'package:restaurant_client/main.dart';


part 'cart_bloc.freezed.dart';
part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  final cartRepository = getIt<CartRepository>();
  CartBloc() : super(const _Empty()) {
    on<CartEvent>((event, emit) {
      event.when(
        started: () async {
          await _updateBalance(emit);
        },
        productAdded: (product) async {
          if (kDebugMode) {
            print('product added $product');
          }
          await cartRepository.addProductToCart(product);
          await _updateBalance(emit);
        },
        productRemoved: (productId) async {
          await cartRepository.removeProductFromCart(productId);
          await _updateBalance(emit);
        },
      );
    });
  }
  Future<void> _updateBalance(Emitter<CartState> emit) async {
    final cartProducts = await cartRepository.getCartProducts();
    emit(
      cartProducts.isNotEmpty
          ? CartState.available(cartProducts)
          : const CartState.empty(),
    );
  }
}
