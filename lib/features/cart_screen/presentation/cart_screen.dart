import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant_client/features/cart_screen/bloc/cart_bloc.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Корзина'),
      ),
      body: BlocBuilder<CartBloc, CartState>(
        builder: (context, state) {
          return state.when(
            loading: () => const Center(child: CircularProgressIndicator()),
            ready: (detales, cart) => cart.isEmpty
                ? const Center(child: Text('Корзина пуста'))
                : ListView.builder(
                    itemCount: detales.length,
                    itemBuilder: (context, index) => ListTile(
                      title: Text(detales[index].name),
                      subtitle: Text('${detales[index].cost} руб.'),
                      trailing: Text('${cart[index].count} шт.'),
                    ),
                  ),
          );
        },
      ),
    );
  }
}
