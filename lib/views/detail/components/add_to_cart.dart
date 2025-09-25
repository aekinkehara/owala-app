import 'package:flutter/material.dart';
import 'package:owala_app/models/products_model.dart';
import 'package:owala_app/utils/const.dart';

class AddToCart extends StatelessWidget {
  final ProductsModel product;
  final int quantity;

  const AddToCart({super.key, required this.product, required this.quantity});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.zero,
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero, // tombol tidak bulet
                ),
              ),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("${product.title} is purchased"),
                    duration: Duration(seconds: 2),
                  ),
                );
              },
              child: Text(
                "Add to Cart",
                style: TextStyle(
                  color: textColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}