import 'package:flutter/material.dart';
import 'package:restaurant_client/features/routing/app_routes.dart';

class AppNavbar extends StatelessWidget {
  const AppNavbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.onBackground,
      // type: BottomNavigationBarType.fixed,
      child: Row(
        children: [
          const Spacer(
            flex: 2,
          ),
          SizedBox(
            width: 90,
            child: OutlinedButton(
              onPressed: () => MenuScreenRoute().go(context),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.food_bank_rounded),
                  Text('Еда'),
                ],
              ),
            ),
          ),
          const Spacer(),
          SizedBox(
            width: 90,
            child: OutlinedButton(
              onPressed: () => CartScreenRoute().go(context),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.shopping_cart_rounded),
                  Text('Корзина'),
                ],
              ),
            ),
          ),
          const Spacer(
            flex: 2,
          ),
        ],
      ),
    );
  }
}
