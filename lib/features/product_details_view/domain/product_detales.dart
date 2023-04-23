import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_detales.freezed.dart';
part 'product_detales.g.dart';

@freezed
class ProductDetales with _$ProductDetales {
  const factory ProductDetales({
    required int id,
    required String name,
    required String? description,
    @JsonKey(name: 'image_url') required String imageUrl,
    required double cost,
    @JsonKey(name: 'sizes') required String weight,
    required int categoryId,
  }) = _ProductDeales;

  factory ProductDetales.fromJson(Map<String, dynamic> json) =>
      _$ProductDetalesFromJson(json);
}
