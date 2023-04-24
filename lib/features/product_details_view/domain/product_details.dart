import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_details.freezed.dart';
part 'product_details.g.dart';

@freezed
class ProductDetails with _$ProductDetails {
  const factory ProductDetails({
    required int id,
    required String name,
    required String? description,
    @JsonKey(name: 'image_url') required String imageUrl,
    required double cost,
    @JsonKey(name: 'sizes') required String weight,
    required int categoryId,
  }) = _ProductDetails;

  factory ProductDetails.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailsFromJson(json);
}
