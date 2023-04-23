import 'package:isar/isar.dart';
import 'package:restaurant_client/features/product_details_view.dart/domain/product_detales.dart';

part 'product_entry.g.dart';
@Embedded()
class ProductEntry {
  late int productId;
  late String name;
  String? description;
  late String imageUrl;
  late double cost;
  late String weight;
  late int categoryId;

  ProductDetales toProductDetales() {
    return ProductDetales(
      id: productId,
      name: name,
      description: description,
      imageUrl: imageUrl,
      cost: cost,
      weight: weight,
      categoryId: categoryId,
    );
  }
}
