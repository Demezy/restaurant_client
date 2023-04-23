import 'package:restaurant_client/features/cart_screen/domain/cart_entry.dart';
import 'package:restaurant_client/features/product_details_view.dart/domain/product_detales.dart';

abstract class CartRepository {
  Future<List<ProductDetales>> getCartProducts();
  Future<List<CartEntry>> getCart();
  Future<void> addProductToCart(ProductDetales product);
  Future<void> removeProductFromCart(int productId);
  Future<void> clearCart();
  Future<double> getCartTotal();
}
