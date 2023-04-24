import 'package:flutter/foundation.dart';
import 'package:isar/isar.dart';
import 'package:restaurant_client/features/cart_screen/domain/cart_entry.dart';
import 'package:restaurant_client/features/cart_screen/domain/cart_repository.dart';
import 'package:restaurant_client/features/cart_screen/domain/category_entry.dart';
import 'package:restaurant_client/features/cart_screen/domain/product_entry.dart';
import 'package:restaurant_client/features/product_details_view/domain/product_detales.dart';
import 'package:restaurant_client/main.dart';

class CartRepositoryIsar implements CartRepository {
  late final _isar = getIt<Isar>();

  @override
  Future<void> addProductToCart(ProductDetales product) async {
    _log('addProductToCart(product: $product)');
    final isar = _isar;
    final storedEntry = await isar.cart.get(product.id);
    if (storedEntry != null) {
      storedEntry.count++;
      await isar.cart.put(storedEntry);
      return;
    }

    final cartEntry = CartEntry()
      ..productId = product.id
      ..count = 1;
    await isar.cart.put(cartEntry);
  }

  @override
  Future<void> clearCart() async {
    final isar = _isar;
    await isar.cart.clear();
  }

  @override
  Future<List<ProductDetales>> getCartProducts() async {
    _log('getCartProducts()');
    final productIds =
        (await getCart()).map((cartEntry) => cartEntry.productId).toList();
    final productEntries =
        (await Future.wait(productIds.map(_getProductsById).toList())).fold(
      List<ProductEntry>.empty(),
      (value, element) => value..addAll(element),
    );
    return productEntries
        .map(
          (entry) => entry.toProductDetales(),
        )
        .toList();
  }

  @override
  Future<void> removeProductFromCart(int productId) async {
    final isar = _isar;
    final product =
        await isar.cart.filter().productIdEqualTo(productId).findFirst();
    if (product == null) {
      return;
    }
    product.count--;
    if (product.count == 0) {
      await isar.cart.delete(productId);
      return;
    }
    await isar.cart.put(product);
  }

  @override
  Future<List<CartEntry>> getCart() async {
    _log('getCart()');
    final isar = _isar;
    return isar.cart.where().findAll();
  }

  @override
  Future<double> getCartTotal() async {
    _log('getcartTotal()');
    final cart = await getCart();
    final cartMap = <int, CartEntry>{};
    for (final entry in cart) {
      cartMap[entry.productId] = entry;
    }

    final cartProducts = await getCartProducts();
    return cartProducts.asMap().entries.fold(
          0,
          (previousValue, element) async =>
              (await previousValue) +
              element.value.cost * (cartMap[element.key]?.count ?? 0),
        );
  }

  Future<List<ProductEntry>> _getProductsById(int id) async {
    _log('getProductsById(id: $id)');
    final isar = _isar;
    return (await isar.categories
            .filter()
            .productsElement((p) => p.productIdEqualTo(id))
            .productsProperty()
            .findAll())
        .fold([], (value, element) async => (await value)..addAll(element));
  }

  void _log(String message) {
    if (kDebugMode) {
      print('CartRepositoryIsar: $message');
    }
  }
}
