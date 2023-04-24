// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ProductDetails product) productAdded,
    required TResult Function(int productId) productRemoved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ProductDetails product)? productAdded,
    TResult? Function(int productId)? productRemoved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ProductDetails product)? productAdded,
    TResult Function(int productId)? productRemoved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Added value) productAdded,
    required TResult Function(_Removed value) productRemoved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Added value)? productAdded,
    TResult? Function(_Removed value)? productRemoved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Added value)? productAdded,
    TResult Function(_Removed value)? productRemoved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartEventCopyWith<$Res> {
  factory $CartEventCopyWith(CartEvent value, $Res Function(CartEvent) then) =
      _$CartEventCopyWithImpl<$Res, CartEvent>;
}

/// @nodoc
class _$CartEventCopyWithImpl<$Res, $Val extends CartEvent>
    implements $CartEventCopyWith<$Res> {
  _$CartEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started with DiagnosticableTreeMixin implements _Started {
  const _$_Started();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CartEvent.started()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CartEvent.started'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ProductDetails product) productAdded,
    required TResult Function(int productId) productRemoved,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ProductDetails product)? productAdded,
    TResult? Function(int productId)? productRemoved,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ProductDetails product)? productAdded,
    TResult Function(int productId)? productRemoved,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Added value) productAdded,
    required TResult Function(_Removed value) productRemoved,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Added value)? productAdded,
    TResult? Function(_Removed value)? productRemoved,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Added value)? productAdded,
    TResult Function(_Removed value)? productRemoved,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CartEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_AddedCopyWith<$Res> {
  factory _$$_AddedCopyWith(_$_Added value, $Res Function(_$_Added) then) =
      __$$_AddedCopyWithImpl<$Res>;
  @useResult
  $Res call({ProductDetails product});

  $ProductDetailsCopyWith<$Res> get product;
}

/// @nodoc
class __$$_AddedCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$_Added>
    implements _$$_AddedCopyWith<$Res> {
  __$$_AddedCopyWithImpl(_$_Added _value, $Res Function(_$_Added) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$_Added(
      null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductDetails,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductDetailsCopyWith<$Res> get product {
    return $ProductDetailsCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc

class _$_Added with DiagnosticableTreeMixin implements _Added {
  const _$_Added(this.product);

  @override
  final ProductDetails product;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CartEvent.productAdded(product: $product)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CartEvent.productAdded'))
      ..add(DiagnosticsProperty('product', product));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Added &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddedCopyWith<_$_Added> get copyWith =>
      __$$_AddedCopyWithImpl<_$_Added>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ProductDetails product) productAdded,
    required TResult Function(int productId) productRemoved,
  }) {
    return productAdded(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ProductDetails product)? productAdded,
    TResult? Function(int productId)? productRemoved,
  }) {
    return productAdded?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ProductDetails product)? productAdded,
    TResult Function(int productId)? productRemoved,
    required TResult orElse(),
  }) {
    if (productAdded != null) {
      return productAdded(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Added value) productAdded,
    required TResult Function(_Removed value) productRemoved,
  }) {
    return productAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Added value)? productAdded,
    TResult? Function(_Removed value)? productRemoved,
  }) {
    return productAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Added value)? productAdded,
    TResult Function(_Removed value)? productRemoved,
    required TResult orElse(),
  }) {
    if (productAdded != null) {
      return productAdded(this);
    }
    return orElse();
  }
}

abstract class _Added implements CartEvent {
  const factory _Added(final ProductDetails product) = _$_Added;

  ProductDetails get product;
  @JsonKey(ignore: true)
  _$$_AddedCopyWith<_$_Added> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RemovedCopyWith<$Res> {
  factory _$$_RemovedCopyWith(
          _$_Removed value, $Res Function(_$_Removed) then) =
      __$$_RemovedCopyWithImpl<$Res>;
  @useResult
  $Res call({int productId});
}

/// @nodoc
class __$$_RemovedCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$_Removed>
    implements _$$_RemovedCopyWith<$Res> {
  __$$_RemovedCopyWithImpl(_$_Removed _value, $Res Function(_$_Removed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
  }) {
    return _then(_$_Removed(
      null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Removed with DiagnosticableTreeMixin implements _Removed {
  const _$_Removed(this.productId);

  @override
  final int productId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CartEvent.productRemoved(productId: $productId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CartEvent.productRemoved'))
      ..add(DiagnosticsProperty('productId', productId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Removed &&
            (identical(other.productId, productId) ||
                other.productId == productId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RemovedCopyWith<_$_Removed> get copyWith =>
      __$$_RemovedCopyWithImpl<_$_Removed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ProductDetails product) productAdded,
    required TResult Function(int productId) productRemoved,
  }) {
    return productRemoved(productId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ProductDetails product)? productAdded,
    TResult? Function(int productId)? productRemoved,
  }) {
    return productRemoved?.call(productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ProductDetails product)? productAdded,
    TResult Function(int productId)? productRemoved,
    required TResult orElse(),
  }) {
    if (productRemoved != null) {
      return productRemoved(productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Added value) productAdded,
    required TResult Function(_Removed value) productRemoved,
  }) {
    return productRemoved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Added value)? productAdded,
    TResult? Function(_Removed value)? productRemoved,
  }) {
    return productRemoved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Added value)? productAdded,
    TResult Function(_Removed value)? productRemoved,
    required TResult orElse(),
  }) {
    if (productRemoved != null) {
      return productRemoved(this);
    }
    return orElse();
  }
}

abstract class _Removed implements CartEvent {
  const factory _Removed(final int productId) = _$_Removed;

  int get productId;
  @JsonKey(ignore: true)
  _$$_RemovedCopyWith<_$_Removed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CartState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(List<ProductDetails> cart) available,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(List<ProductDetails> cart)? available,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<ProductDetails> cart)? available,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Available value) available,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Available value)? available,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Empty value)? empty,
    TResult Function(_Available value)? available,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res, $Val extends CartState>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading with DiagnosticableTreeMixin implements _Loading {
  const _$_Loading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CartState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CartState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(List<ProductDetails> cart) available,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(List<ProductDetails> cart)? available,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<ProductDetails> cart)? available,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Available value) available,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Available value)? available,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Empty value)? empty,
    TResult Function(_Available value)? available,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements CartState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_EmptyCopyWith<$Res> {
  factory _$$_EmptyCopyWith(_$_Empty value, $Res Function(_$_Empty) then) =
      __$$_EmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EmptyCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$_Empty>
    implements _$$_EmptyCopyWith<$Res> {
  __$$_EmptyCopyWithImpl(_$_Empty _value, $Res Function(_$_Empty) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Empty with DiagnosticableTreeMixin implements _Empty {
  const _$_Empty();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CartState.empty()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CartState.empty'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Empty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(List<ProductDetails> cart) available,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(List<ProductDetails> cart)? available,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<ProductDetails> cart)? available,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Available value) available,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Available value)? available,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Empty value)? empty,
    TResult Function(_Available value)? available,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty implements CartState {
  const factory _Empty() = _$_Empty;
}

/// @nodoc
abstract class _$$_AvailableCopyWith<$Res> {
  factory _$$_AvailableCopyWith(
          _$_Available value, $Res Function(_$_Available) then) =
      __$$_AvailableCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ProductDetails> cart});
}

/// @nodoc
class __$$_AvailableCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$_Available>
    implements _$$_AvailableCopyWith<$Res> {
  __$$_AvailableCopyWithImpl(
      _$_Available _value, $Res Function(_$_Available) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cart = null,
  }) {
    return _then(_$_Available(
      null == cart
          ? _value._cart
          : cart // ignore: cast_nullable_to_non_nullable
              as List<ProductDetails>,
    ));
  }
}

/// @nodoc

class _$_Available with DiagnosticableTreeMixin implements _Available {
  const _$_Available(final List<ProductDetails> cart) : _cart = cart;

  final List<ProductDetails> _cart;
  @override
  List<ProductDetails> get cart {
    if (_cart is EqualUnmodifiableListView) return _cart;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cart);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CartState.available(cart: $cart)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CartState.available'))
      ..add(DiagnosticsProperty('cart', cart));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Available &&
            const DeepCollectionEquality().equals(other._cart, _cart));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cart));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AvailableCopyWith<_$_Available> get copyWith =>
      __$$_AvailableCopyWithImpl<_$_Available>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(List<ProductDetails> cart) available,
  }) {
    return available(cart);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(List<ProductDetails> cart)? available,
  }) {
    return available?.call(cart);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<ProductDetails> cart)? available,
    required TResult orElse(),
  }) {
    if (available != null) {
      return available(cart);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Available value) available,
  }) {
    return available(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Available value)? available,
  }) {
    return available?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Empty value)? empty,
    TResult Function(_Available value)? available,
    required TResult orElse(),
  }) {
    if (available != null) {
      return available(this);
    }
    return orElse();
  }
}

abstract class _Available implements CartState {
  const factory _Available(final List<ProductDetails> cart) = _$_Available;

  List<ProductDetails> get cart;
  @JsonKey(ignore: true)
  _$$_AvailableCopyWith<_$_Available> get copyWith =>
      throw _privateConstructorUsedError;
}
