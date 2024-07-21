import 'package:flutter/material.dart';
import 'package:timbu/src/views/orders/order_product_item_tile.dart';

import '../../models/product.dart';

class ProductsSection extends StatelessWidget {
  const ProductsSection({super.key, required this.products});
  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: products.length,
      itemBuilder: (_, i) {
        return Column(
          children: [
            OrderProductItemTile(product: products[i]),
            const SizedBox(height: 20.0),
          ],
        );
      },
    );
  }
}
