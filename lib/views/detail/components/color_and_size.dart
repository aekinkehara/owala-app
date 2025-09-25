import 'package:flutter/material.dart';
import 'package:owala_app/models/products_model.dart';
import 'package:owala_app/views/detail/components/color_picker.dart';

class ColorAndSize extends StatelessWidget {
  final ProductsModel product;

  const ColorAndSize({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Colors", style: TextStyle(color: Colors.black)),
              Row(
                children: [
                  ColorPicker(color: Color.fromARGB(255, 151, 30, 30), isSelected: true),
                  ColorPicker(color: Color(0xFFFCEABF), isSelected: false),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Size",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              RichText(
                text: TextSpan(
                  style: TextStyle(color: Colors.black),
                  children: [
                    TextSpan(
                      text: "${product.size}",
                      style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontWeight: FontWeight.w500)
                    )
                  ]
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
