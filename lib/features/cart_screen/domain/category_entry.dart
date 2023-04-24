import 'package:isar/isar.dart';
import 'package:restaurant_client/features/cart_screen/domain/product_entry.dart';
import 'package:restaurant_client/features/menu_screen/domain/product_category.dart';

part 'category_entry.g.dart';

@Collection(accessor: 'categories')
class CategoryEntry {
  late Id id;
  late String name;
  late String imageUrl;
  late List<ProductEntry> products;

  ProductCategory toProductCategory() {
    return ProductCategory(
      id: id,
      name: name,
      imageUrl: imageUrl,
      products: products.map((e) => e.toProductDetails()).toList(),
    );
  }
}
