// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductCategory _$$_ProductCategoryFromJson(Map<String, dynamic> json) =>
    _$_ProductCategory(
      id: json['id'] as int,
      name: json['category_name'] as String,
      imageUrl: json['image_url'] as String,
      products: (json['products'] as List<dynamic>)
          .map((e) => ProductDetales.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ProductCategoryToJson(_$_ProductCategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'category_name': instance.name,
      'image_url': instance.imageUrl,
      'products': instance.products,
    };
