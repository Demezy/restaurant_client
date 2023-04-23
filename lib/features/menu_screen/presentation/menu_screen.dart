import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant_client/features/menu_screen/bloc/menu_bloc.dart';
import 'package:restaurant_client/features/routing/app_routes.dart';

class MenuScreen extends StatelessWidget {
  MenuScreen({super.key});
  final MenuBloc menuBloc = MenuBloc()..add(const MenuEvent.started());

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MenuBloc>(
      create: (context) => menuBloc,
      child: SafeArea(
        child: BlocBuilder<MenuBloc, MenuState>(
          bloc: menuBloc,
          builder: (context, state) => state.map(
            loading: (_) => const Center(child: CircularProgressIndicator()),
            ready: (state) => GridView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: state.categories.length,
              itemBuilder: (context, index) {
                final currentCategory = state.categories[index];
                return GestureDetector(
                  onTap: () =>
                      MenuCategoryRoute(id: currentCategory.id).push<void>(context),
                  child: GridTile(
                    footer: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(currentCategory.name),
                    ),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Image.network(
                              // currentCategory.imageUrl,
                              'https://cdn.powerofpositivity.com/wp-content/uploads/2018/05/healthy-breakfast-food.jpeg',
                              errorBuilder: (context, error, stackTrace) =>
                                  // Апиха дает ссылки на картинки, которые не доступны,
                                  // без авторизации. Отображаем заглушку.
                                  const Icon(Icons.error),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                childAspectRatio: 0.9,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                maxCrossAxisExtent: 200,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
