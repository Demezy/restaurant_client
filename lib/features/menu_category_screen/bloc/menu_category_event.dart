part of 'menu_category_bloc.dart';

@freezed
class MenuCategoryEvent with _$MenuCategoryEvent {
  const factory MenuCategoryEvent.started() = _Started;
  const factory MenuCategoryEvent.productSelected({
    required int productId,
  }) = _ProductSelected;
  const factory MenuCategoryEvent.productDeselected({
    required int productId,
  }) = _ProductDeselected;
}
