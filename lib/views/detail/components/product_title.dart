import 'package:flutter/material.dart';
import 'package:owala_app/models/products_model.dart';

class ProductTitle extends StatelessWidget {
  final ProductsModel product;

  const ProductTitle({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Category
        const Text(
          "Accessories",
          style: TextStyle(color: Colors.black),
        ),
        const SizedBox(height: 5),

        // Title
        Text(
          product.title,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 26,
            fontWeight: FontWeight.w500,
          ),
        ),

        // Price
        Text(
          product.getFormattedPrice(),
          style: const TextStyle(
            color: Colors.black,
            fontSize: 22,
          ),
        ),
      ],
    );
  }
}