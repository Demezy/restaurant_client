import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:restaurant_client/features/cart_screen/presentation/cart_screen.dart';
import 'package:restaurant_client/features/error_screen/presentation/error_screen.dart';
import 'package:restaurant_client/features/menu_category_screen/presentation/menu_in_category_screen.dart';
import 'package:restaurant_client/features/menu_screen/presentation/menu_screen.dart';
import 'package:restaurant_client/features/navbar/presentation/app_navbar.dart';
import 'package:restaurant_client/locales.dart';

part 'app_routes.g.dart';

@TypedGoRoute<MenuScreenRoute>(
  path: '/',
  routes: [
    TypedGoRoute<MenuCategoryRoute>(
      path: 'category/:id',
    ),
    TypedGoRoute<CartScreenRoute>(path: 'cart'),
  ],
)

@immutable
class MenuScreenRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) => Scaffold(
        body: MenuScreen(),
        bottomNavigationBar: const AppNavbar(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            context.setLocale(context.locale == Locales.ru ? Locales.en : Locales.ru);
          },
          child: const Icon(Icons.language_outlined),
        ),
      );
}

@immutable
class MenuCategoryRoute extends GoRouteData {
  final int id;

  const MenuCategoryRoute({
    required this.id,
  });

  @override
  Widget build(BuildContext context, GoRouterState state) => Scaffold(
        backgroundColor: Colors.green[100],
        body: MenuInCategoryScreen(categoryId: id),
        bottomNavigationBar: const AppNavbar(),
      );
}

class ErrorRoute extends GoRouteData {
  final Exception error;

  ErrorRoute({required this.error});

  @override
  Widget build(BuildContext context, GoRouterState state) => ErrorScreen(error: error);
}

@immutable
class CartScreenRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) => Scaffold(
        backgroundColor: Colors.green[100],
        body: const CartScreen(),
        bottomNavigationBar: const AppNavbar(),
      );
}
