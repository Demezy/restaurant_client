part of 'cart_bloc.dart';

@freezed
class CartState with _$CartState {
  const factory CartState.loading() = _Loading;
  const factory CartState.ready({
    required List<ProductDetails> products,
    required List<CartEntry> cart,
  }) = _Ready;
}
