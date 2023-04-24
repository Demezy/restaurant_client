import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant_client/features/cart_screen/bloc/cart_bloc.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('titleCart').tr(),
      ),
      body: BlocBuilder<CartBloc, CartState>(
        builder: (context, state) {
          return state.when(
            loading: () => const Center(child: CircularProgressIndicator()),
            ready: (details, cart) => cart.isEmpty
                ? Center(
                    child: const Text('labelEmptyCart').tr(),
                  )
                : ListView.builder(
                    itemCount: details.length,
                    itemBuilder: (context, index) => ListTile(
                      title: Text(details[index].name),
                      subtitle: Text('${details[index].cost} руб.'),
                      trailing: Text('${cart[index].count} шт.'),
                    ),
                  ),
          );
        },
      ),
    );
  }
}
