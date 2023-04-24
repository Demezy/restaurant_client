part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.started() = _Started;
  const factory CartEvent.added({required ProductDetails product}) = _Added;
  const factory CartEvent.removed({required int productId}) = _Removed;
}
