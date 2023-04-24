// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductDetails _$ProductDetailsFromJson(Map<String, dynamic> json) {
  return _ProductDetails.fromJson(json);
}

/// @nodoc
mixin _$ProductDetails {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String get imageUrl => throw _privateConstructorUsedError;
  double get cost => throw _privateConstructorUsedError;
  @JsonKey(name: 'sizes')
  String get weight => throw _privateConstructorUsedError;
  int get categoryId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductDetailsCopyWith<ProductDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailsCopyWith<$Res> {
  factory $ProductDetailsCopyWith(
          ProductDetails value, $Res Function(ProductDetails) then) =
      _$ProductDetailsCopyWithImpl<$Res, ProductDetails>;
  @useResult
  $Res call(
      {int id,
      String name,
      String? description,
      @JsonKey(name: 'image_url') String imageUrl,
      double cost,
      @JsonKey(name: 'sizes') String weight,
      int categoryId});
}

/// @nodoc
class _$ProductDetailsCopyWithImpl<$Res, $Val extends ProductDetails>
    implements $ProductDetailsCopyWith<$Res> {
  _$ProductDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? imageUrl = null,
    Object? cost = null,
    Object? weight = null,
    Object? categoryId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      cost: null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as double,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductDetailsCopyWith<$Res>
    implements $ProductDetailsCopyWith<$Res> {
  factory _$$_ProductDetailsCopyWith(
          _$_ProductDetails value, $Res Function(_$_ProductDetails) then) =
      __$$_ProductDetailsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String? description,
      @JsonKey(name: 'image_url') String imageUrl,
      double cost,
      @JsonKey(name: 'sizes') String weight,
      int categoryId});
}

/// @nodoc
class __$$_ProductDetailsCopyWithImpl<$Res>
    extends _$ProductDetailsCopyWithImpl<$Res, _$_ProductDetails>
    implements _$$_ProductDetailsCopyWith<$Res> {
  __$$_ProductDetailsCopyWithImpl(
      _$_ProductDetails _value, $Res Function(_$_ProductDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? imageUrl = null,
    Object? cost = null,
    Object? weight = null,
    Object? categoryId = null,
  }) {
    return _then(_$_ProductDetails(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      cost: null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as double,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductDetails implements _ProductDetails {
  const _$_ProductDetails(
      {required this.id,
      required this.name,
      required this.description,
      @JsonKey(name: 'image_url') required this.imageUrl,
      required this.cost,
      @JsonKey(name: 'sizes') required this.weight,
      required this.categoryId});

  factory _$_ProductDetails.fromJson(Map<String, dynamic> json) =>
      _$$_ProductDetailsFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String? description;
  @override
  @JsonKey(name: 'image_url')
  final String imageUrl;
  @override
  final double cost;
  @override
  @JsonKey(name: 'sizes')
  final String weight;
  @override
  final int categoryId;

  @override
  String toString() {
    return 'ProductDetails(id: $id, name: $name, description: $description, imageUrl: $imageUrl, cost: $cost, weight: $weight, categoryId: $categoryId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductDetails &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.cost, cost) || other.cost == cost) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, description, imageUrl, cost, weight, categoryId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductDetailsCopyWith<_$_ProductDetails> get copyWith =>
      __$$_ProductDetailsCopyWithImpl<_$_ProductDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductDetailsToJson(
      this,
    );
  }
}

abstract class _ProductDetails implements ProductDetails {
  const factory _ProductDetails(
      {required final int id,
      required final String name,
      required final String? description,
      @JsonKey(name: 'image_url') required final String imageUrl,
      required final double cost,
      @JsonKey(name: 'sizes') required final String weight,
      required final int categoryId}) = _$_ProductDetails;

  factory _ProductDetails.fromJson(Map<String, dynamic> json) =
      _$_ProductDetails.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String? get description;
  @override
  @JsonKey(name: 'image_url')
  String get imageUrl;
  @override
  double get cost;
  @override
  @JsonKey(name: 'sizes')
  String get weight;
  @override
  int get categoryId;
  @override
  @JsonKey(ignore: true)
  _$$_ProductDetailsCopyWith<_$_ProductDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
