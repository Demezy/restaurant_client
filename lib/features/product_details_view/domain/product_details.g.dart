// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductDetails _$$_ProductDetailsFromJson(Map<String, dynamic> json) =>
    _$_ProductDetails(
      id: json['id'] as int,
      name: json['name'] as String,
      description: json['description'] as String?,
      imageUrl: json['image_url'] as String,
      cost: (json['cost'] as num).toDouble(),
      weight: json['sizes'] as String,
      categoryId: json['categoryId'] as int,
    );

Map<String, dynamic> _$$_ProductDetailsToJson(_$_ProductDetails instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'image_url': instance.imageUrl,
      'cost': instance.cost,
      'sizes': instance.weight,
      'categoryId': instance.categoryId,
    };
