import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant_client/features/cart_screen/domain/cart_entry.dart';
import 'package:restaurant_client/features/cart_screen/domain/cart_repository.dart';
import 'package:restaurant_client/features/product_details_view.dart/domain/product_detales.dart';
import 'package:restaurant_client/main.dart';

part 'cart_bloc.freezed.dart';
part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  final cartRepository = getIt.get<CartRepository>();
  CartBloc() : super(const _Loading()) {
    on<CartEvent>(_onEvent);
  }
  Future<void> _onEvent(CartEvent event, Emitter<CartState> emit) async {
    await event.when(
      started: () async {
        if (state is _Ready) {
          return;
        }
        await _updateCart(emit);
      },
      added: (product) async {
        emit(const _Loading());
        await cartRepository.addProductToCart(product);
        await _updateCart(emit);
      },
      removed: (productId) async {
        emit(const _Loading());
        await cartRepository.removeProductFromCart(productId);
        await _updateCart(emit);
      },
    );
  }

  Future<void> _updateCart(Emitter<CartState> emit) async {
    emit(const _Loading());
    final cart = await cartRepository.getCart();
    final cartProducts = await cartRepository.getCartProducts();
    emit(_Ready(products: cartProducts, cart: cart));
  }
}
