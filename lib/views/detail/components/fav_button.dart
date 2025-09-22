import 'package:flutter/material.dart';
import 'package:owala_app/models/products_model.dart';

class FavButton extends StatelessWidget {
  final ProductsModel product;

  const FavButton({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    bool isFavorite = false;

    return IconButton(
      onPressed: () {
        if (isFavorite = true) {
          // to do: dari provider, untuk memutuskan dia warna apa dan itemnya masuk mana
        } else {
          // to do: masukkan kode untuk logika penambahan item di halaman wishlist
        }
      },
      icon: Icon(
        Icons.favorite,
        color: Colors.red,
      ),
    );
  }
}