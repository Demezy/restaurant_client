import 'package:restaurant_client/features/menu_screen/domain/product_category.dart';
import 'package:restaurant_client/features/product_details_view/domain/product_details.dart';

abstract class ProductsRepository {
  Future<List<ProductDetails>?> getProductsFromCategory(int categoryId);
  Future<List<ProductCategory>> getCategories();
}
