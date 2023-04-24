import 'package:isar/isar.dart';
import 'package:restaurant_client/features/cart_screen/domain/cart_entry.dart';
import 'package:restaurant_client/features/cart_screen/domain/cart_repository.dart';
import 'package:restaurant_client/features/cart_screen/domain/category_entry.dart';
import 'package:restaurant_client/features/cart_screen/domain/product_entry.dart';
import 'package:restaurant_client/features/product_details_view/domain/product_details.dart';
import 'package:restaurant_client/main.dart';

class CartRepositoryIsar implements CartRepository {
  late final _isar = getIt<Isar>();

  @override
  Future<void> addProductToCart(ProductDetails product) async {
    final storedEntry = await _isar.cart.get(product.id);
    if (storedEntry != null) {
      storedEntry.count++;
      await _isar.cart.put(storedEntry);
      return;
    }

    final cartEntry = CartEntry()
      ..productId = product.id
      ..count = 1;
    await _isar.cart.put(cartEntry);
  }

  @override
  Future<void> clearCart() async {
    await _isar.cart.clear();
  }

  @override
  Future<List<ProductDetails>> getCartProducts() async {
    final productIds = (await getCart()).map((cartEntry) => cartEntry.productId).toList();
    final productEntries = (await Future.wait(productIds.map(_getProductsById).toList())).fold(
      List<ProductEntry>.empty(),
      (value, element) => value..addAll(element),
    );
    return productEntries
        .map(
          (entry) => entry.toProductDetails(),
        )
        .toList();
  }

  @override
  Future<void> removeProductFromCart(int productId) async {
    final product = await _isar.cart.filter().productIdEqualTo(productId).findFirst();
    if (product == null) {
      return;
    }
    product.count--;
    if (product.count == 0) {
      await _isar.cart.delete(productId);
      return;
    }
    await _isar.cart.put(product);
  }

  @override
  Future<List<CartEntry>> getCart() async {
    return _isar.cart.where().findAll();
  }

  @override
  Future<double> getCartTotal() async {
    final cart = await getCart();
    final cartMap = <int, CartEntry>{};
    for (final entry in cart) {
      cartMap[entry.productId] = entry;
    }

    final cartProducts = await getCartProducts();
    return cartProducts.asMap().entries.fold(
          0,
          (previousValue, element) async =>
              (await previousValue) + element.value.cost * (cartMap[element.key]?.count ?? 0),
        );
  }

  Future<List<ProductEntry>> _getProductsById(int id) async {
    return (await _isar.categories
            .filter()
            .productsElement((p) => p.productIdEqualTo(id))
            .productsProperty()
            .findAll())
        .fold([], (value, element) async => (await value)..addAll(element));
  }
}
