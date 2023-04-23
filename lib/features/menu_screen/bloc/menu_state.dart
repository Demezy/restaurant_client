part of 'menu_bloc.dart';

@freezed
class MenuState with _$MenuState {
  const factory MenuState.loading() = _Loading;
  const factory MenuState.ready(List<ProductCategory> categories) = _Ready;
}
