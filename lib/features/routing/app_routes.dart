import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:restaurant_client/features/cart_screen/presentation/cart_screen.dart';
import 'package:restaurant_client/features/error_screen/presentation/error_screen.dart';
import 'package:restaurant_client/features/menu_category_screen/presentation/menu_in_category_screen.dart';
import 'package:restaurant_client/features/menu_screen/presentation/menu_screen.dart';
import 'package:restaurant_client/features/navbar/presentation/app_navbar.dart';

part 'app_routes.g.dart';

// final GoRouter _router = GoRouter(
//   routes: <RouteBase>[
@TypedGoRoute<MenuScreenRoute>(
  path: '/',
  routes: [
    TypedGoRoute<MenuCategoryRoute>(
      path: 'category/:id',
    ),
    TypedGoRoute<CartScreenRoute>(path: 'cart'),
  ],
)
// ],);

@immutable
class MenuScreenRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) => Scaffold(
        backgroundColor: Colors.green[100],
        body: MenuScreen(),
        bottomNavigationBar: AppNavbar(),
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
        bottomNavigationBar: AppNavbar(),
      );
}

class ErrorRoute extends GoRouteData {
  final Exception error;
  ErrorRoute({required this.error});

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      ErrorScreen(error: error);
}

@immutable
class CartScreenRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) => Scaffold(
        backgroundColor: Colors.green[100],
        body: const CartScreen(),
        bottomNavigationBar: AppNavbar(),
      );
}
