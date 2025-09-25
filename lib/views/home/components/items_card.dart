import 'package:flutter/material.dart';
import 'package:owala_app/models/products_model.dart';
import 'package:owala_app/utils/const.dart';

class ItemsCard extends StatelessWidget {
  final ProductsModel product;
  final VoidCallback press;

  const ItemsCard({super.key, required this.product, required this.press});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180, // atur tinggi area gambar
            width: double.infinity,
            padding: EdgeInsets.all(defaultPadding),
            decoration: BoxDecoration(
              color: product.color,
            ),
            child: Hero(
              tag: "${product.id}",
              child: Image.asset(
                product.image,
                fit: BoxFit.cover,   // cover = isi full container
                width: double.infinity,
                height: double.infinity,
              ),
            ),
          ),
          const SizedBox(height: 8),

          /// Judul produk
          Text(
            product.title,
            style: const TextStyle(
              fontSize: 15,
              color: Colors.black,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),

          const SizedBox(height: 4),

          /// Harga produk
          Text(
            product.getFormattedPrice(),
            style: const TextStyle(
              color: Color.fromARGB(255, 120, 120, 120),
            ),
          ),
        ],
      ),
    );
  }
}
