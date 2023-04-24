part of 'cart_bloc.dart';

@freezed
class CartState with _$CartState {
  const factory CartState.loading() = _Loading;
  const factory CartState.empty() = _Empty;
  const factory CartState.available(List<ProductDetails> cart) = _Available;
}
