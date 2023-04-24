import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_client/features/product_details_view/domain/product_details.dart';

class ProductDetailsView extends StatelessWidget {
  final ProductDetails product;
  final ScrollController? scrollController;

  const ProductDetailsView({
    required this.product,
    this.scrollController,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      controller: scrollController,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.grey,
              ),
              height: 5,
              width: 40,
            ),
          ),
        ),
        LayoutBuilder(
          builder: (context, constraints) => ConstrainedBox(
            constraints: constraints,
            child: Image.network(product.imageUrl),
          ),
        ),
        Text(product.name),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(product.cost.toString()),
            ElevatedButton(
              onPressed: () {},
              child: const Text('buttonWant').tr(),
            ),
          ],
        ),
        if (product.description != null)
          Text(product.description!),
        Text(product.weight.toString()),
        Text(product.imageUrl),
      ],
    );
  }
}
