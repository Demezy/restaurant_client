import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant_client/features/navbar/bloc/cart_bloc.dart';
import 'package:restaurant_client/features/routing/app_routes.dart';

class AppNavbar extends StatelessWidget {
  const AppNavbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ColoredBox(
        color: Theme.of(context).colorScheme.onBackground,
        child: Row(
          children: [
            const Spacer(
              flex: 2,
            ),
            SizedBox(
              width: 90,
              child: InkWell(
                onTap: () => MenuScreenRoute().go(context),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.food_bank_rounded),
                    const Text('tabFood').tr(),
                  ],
                ),
              ),
            ),
            const Spacer(),
            SizedBox(
              width: 90,
              child: InkWell(
                onTap: () => CartScreenRoute().go(context),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.shopping_cart_rounded),
                    BlocBuilder<CartBloc, CartState>(
                      builder: (context, state) {
                        return state.when(
                          empty: () => const Text('tabCart').tr(),
                          loading: () => const Text('tabCart').tr(),
                          available: (cart) {
                            final balance = cart.fold(
                              0.0,
                              (acc, element) =>
                                  acc + (element.cost * element.cost),
                            );
                            return Text('$balance');
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
