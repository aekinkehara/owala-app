import 'package:flutter/material.dart';
import 'package:owala_app/models/products_model.dart';

class Description extends StatelessWidget {
  final ProductsModel product;

  const Description({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 0.1),
      child: Text(
        product.description,
        style: TextStyle(
          height: 1.5,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
      ),
    );
  }
}