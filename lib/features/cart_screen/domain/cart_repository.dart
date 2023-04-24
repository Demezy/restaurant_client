import 'package:restaurant_client/features/cart_screen/domain/cart_entry.dart';
import 'package:restaurant_client/features/product_details_view/domain/product_details.dart';

abstract class CartRepository {
  Future<List<ProductDetails>> getCartProducts();
  Future<List<CartEntry>> getCart();
  Future<void> addProductToCart(ProductDetails product);
  Future<void> removeProductFromCart(int productId);
  Future<void> clearCart();
  Future<double> getCartTotal();
}
