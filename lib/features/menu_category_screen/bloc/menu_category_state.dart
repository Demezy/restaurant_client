part of 'menu_category_bloc.dart';

@freezed
class MenuCategoryState with _$MenuCategoryState {
  const factory MenuCategoryState.loading() = _Loading;
  const factory MenuCategoryState.ready({
    required List<ProductDetales> menu,
  }) = _Ready;
  const factory MenuCategoryState.error({
    required String message,
  }) = _Error;
}
