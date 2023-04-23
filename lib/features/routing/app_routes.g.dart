// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $menuScreenRoute,
    ];

RouteBase get $menuScreenRoute => GoRouteData.$route(
      path: '/',
      factory: $MenuScreenRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'category/:id',
          factory: $MenuCategoryRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'cart',
          factory: $CartScreenRouteExtension._fromState,
        ),
      ],
    );

extension $MenuScreenRouteExtension on MenuScreenRoute {
  static MenuScreenRoute _fromState(GoRouterState state) => MenuScreenRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);
}

extension $MenuCategoryRouteExtension on MenuCategoryRoute {
  static MenuCategoryRoute _fromState(GoRouterState state) => MenuCategoryRoute(
        id: int.parse(state.params['id']!),
      );

  String get location => GoRouteData.$location(
        '/category/${Uri.encodeComponent(id.toString())}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);
}

extension $CartScreenRouteExtension on CartScreenRoute {
  static CartScreenRoute _fromState(GoRouterState state) => CartScreenRoute();

  String get location => GoRouteData.$location(
        '/cart',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);
}
