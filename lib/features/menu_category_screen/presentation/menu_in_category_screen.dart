import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant_client/features/menu_category_screen/bloc/menu_category_bloc.dart';
import 'package:restaurant_client/features/product_details_view/domain/product_detales.dart';
import 'package:restaurant_client/features/product_details_view/presentation/product_detales_view.dart';

class MenuInCategoryScreen extends StatelessWidget {
  final int categoryId;
  late final MenuCategoryBloc menuCategoryBloc;
  MenuInCategoryScreen({
    required this.categoryId,
    super.key,
  }) {
    menuCategoryBloc = MenuCategoryBloc(categoryId: categoryId)
      ..add(const MenuCategoryEvent.started());
  }

  void _showDetalesSheet(BuildContext context, ProductDetales product) {
    if (!context.mounted) {
      return;
    }
    showModalBottomSheet<void>(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      useSafeArea: true,
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return DraggableScrollableSheet(
          expand: false,
          builder: (context, scrollController) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ProductDetalesView(
                product: product,
                scrollController: scrollController,
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MenuCategoryBloc>(
      create: (context) => menuCategoryBloc,
      child: SafeArea(
        child: BlocBuilder<MenuCategoryBloc, MenuCategoryState>(
          bloc: menuCategoryBloc,
          builder: (context, state) => state.when(
            loading: () => const Center(child: CircularProgressIndicator()),
            // Будет поймано роутером и показано сообщение об ошибке.
            error: (message) => throw Exception(message),
            ready: (menuState) => GridView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: menuState.length,
              itemBuilder: (context, index) {
                final currentProduct = menuState[index];
                return
                  GestureDetector(
                    onTap: () => _showDetalesSheet(context, currentProduct),
                    child:
                DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Image.network(
                            currentProduct.imageUrl,
                            errorBuilder: (context, error, stackTrace) =>
                                // Апиха дает ссылки на картинки, которые не доступны,
                                // без авторизации. Отображаем заглушку
                                const Icon(Icons.error),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(currentProduct.name),
                          ),
                          const Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '${currentProduct.cost.toString()}  \u20BD',
                                style: Theme.of(context).textTheme.caption,
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                child: const Text('+'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                childAspectRatio: 0.7,
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
