import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:restaurant_client/features/cart_screen/bloc/cart_bloc.dart';
import 'package:restaurant_client/features/cart_screen/data/cart_repository_isar.dart';
import 'package:restaurant_client/features/cart_screen/domain/cart_entry.dart';
import 'package:restaurant_client/features/cart_screen/domain/cart_repository.dart';
import 'package:restaurant_client/features/cart_screen/domain/category_entry.dart';
import 'package:restaurant_client/features/error_screen/presentation/error_screen.dart';
import 'package:restaurant_client/features/menu_screen/data/products_repository_dio.dart';
import 'package:restaurant_client/features/menu_screen/domain/products_repository.dart';
import 'package:restaurant_client/features/routing/app_routes.dart';

final _router = GoRouter(
  routes: $appRoutes,
  errorBuilder: (context, state) =>
      ErrorScreen(error: state.error!).build(context),
);

final getIt = GetIt.instance;

Future<void> setup() async {
  final isarPath = await getApplicationDocumentsDirectory();
  getIt
    ..registerLazySingleton<Dio>(Dio.new)
    ..registerSingleton<ProductsRepository>(
      ProductsRepositoryDio(useDummyImage: true),
    )
    ..registerSingletonAsync<Isar>(
      () => Isar.open(
        [
          CategoryEntrySchema,
          CartEntrySchema,
        ],
        directory: isarPath.path,
      ),
    )
    ..registerSingletonWithDependencies<CartRepository>(
      CartRepositoryIsar.new,
      dependsOn: [Isar],
    );
  await getIt.allReady(timeout: const Duration(seconds: 5));
}

void main() {
  setup();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const RestarauntApp());
}

class RestarauntApp extends StatelessWidget {
  const RestarauntApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CartBloc>(
          create: (context) => CartBloc()..add(const CartEvent.started()),
        ),
      ],
      child: MaterialApp.router(
        title: 'Restaurent App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routerConfig: _router,
      ),
    );
  }
}
