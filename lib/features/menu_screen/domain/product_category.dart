import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant_client/features/product_details_view/domain/product_details.dart';

part 'product_category.freezed.dart';
part 'product_category.g.dart';

@freezed
class ProductCategory with _$ProductCategory {
  const factory ProductCategory({
    required int id,
    @JsonKey(name: 'category_name') required String name,
    @JsonKey(name: 'image_url') required String imageUrl,
    required List<ProductDetails> products,
  }) = _ProductCategory;

  factory ProductCategory.fromJson(Map<String, dynamic> json) =>
      _$ProductCategoryFromJson(json);
}
