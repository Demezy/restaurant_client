import 'package:restaurant_client/features/menu_screen/domain/product_category.dart';
import 'package:restaurant_client/features/product_details_view.dart/domain/product_detales.dart';

abstract class ProductsRepository {
  Future<List<ProductDetales>?> getProductsFromCategory(int categoryId);
  Future<List<ProductCategory>> getCategories();
}
