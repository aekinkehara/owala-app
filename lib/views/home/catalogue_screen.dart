import 'package:flutter/material.dart';
import 'package:owala_app/utils/const.dart';
import 'package:owala_app/views/home/components/app_bar.dart';
import 'package:owala_app/views/home/components/banner_slider.dart';
import 'package:owala_app/views/home/components/bottom_nav_bar.dart';
import 'package:owala_app/views/home/components/categories.dart';
import 'package:owala_app/views/home/components/drinkware_grid.dart';

class CatalogueScreen extends StatefulWidget {
  const CatalogueScreen({super.key});

  @override
  State<CatalogueScreen> createState() => _CatalogueScreenState();
}

class _CatalogueScreenState extends State<CatalogueScreen> {
  int _selectedIndex = 0; // bottom navbar index
  int _selectedCategory = 0; // kategori index

  final List<Widget> _widgetOptions = [];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  /// List kategori
  final List<String> categories = ["Accessories", "Bags", "Wallets"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _selectedIndex == 0 ? CatalogueAppBar() : null,
      body: _selectedIndex == 0
          ? SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BannerSlider(),
                  Categories(),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: defaultPadding),
                    child: Column(
                      children: [
                        /// Bungkus Row dengan SizedBox biar full width
                        SizedBox(
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(
                              categories.length,
                              (index) => GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _selectedCategory = index;
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 25),
                                  child: Text(
                                    categories[index],
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: _selectedCategory == index
                                          ? Colors.black
                                          : Colors.grey,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),

                        /// Garis full dari kiri ke kanan
                        const Divider(
                          color: Colors.black,
                          thickness: 1,
                          height: 1,
                        ),
                      ],
                    ),
                  ),
                  DrinkwareGrid(),
                ],
              ),
            )
          : _widgetOptions[_selectedIndex - 1],
      bottomNavigationBar: BottomNavBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}
