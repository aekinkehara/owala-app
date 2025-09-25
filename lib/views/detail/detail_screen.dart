import 'package:flutter/material.dart';
import 'package:owala_app/models/products_model.dart';
import 'package:owala_app/utils/const.dart';
import 'package:owala_app/views/detail/components/add_to_cart.dart';
import 'package:owala_app/views/detail/components/color_and_size.dart';
import 'package:owala_app/views/detail/components/description.dart';
import 'package:owala_app/views/detail/components/product_title.dart';

class DetailScreen extends StatelessWidget {
  final ProductsModel product;

  const DetailScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    int quantity = 1;
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: product.color,
      appBar: AppBar(
        backgroundColor: product.color,
        elevation: 0,
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart_outlined, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            children: [
              // Scrollable content
              SingleChildScrollView(
                child: Column(
                  children: [
                    Transform.translate(
                      offset: const Offset(0, -30),
                      child: Hero(
                        tag: "${product.id}",
                        child: Image.asset(
                          product.image,
                          width: size.width * 0.95,
                          height: size.height * 0.45,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    // Konten putih
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.only(
                        top: defaultPadding,
                        left: 25,
                        right: defaultPadding,
                        bottom: 100, // sementara, akan adjust jika tombol lebih tinggi
                      ),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ProductTitle(product: product),
                          const SizedBox(height: 25),
                          ColorAndSize(product: product),
                          const SizedBox(height: 30),
                          Description(product: product),
                        ],
                      ),
                    ),
                    // Spacer untuk memastikan scrollable sampai atas tombol
                    SizedBox(height: 80),
                  ],
                ),
              ),

              // Tombol AddToCart fixed di bawah
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: AddToCart(product: product, quantity: quantity),
              ),
            ],
          );
        },
      ),
    );
  }
}
