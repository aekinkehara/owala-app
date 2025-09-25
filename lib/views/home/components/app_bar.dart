import 'package:flutter/material.dart';

class CatalogueAppBar extends StatelessWidget implements PreferredSizeWidget{
  const CatalogueAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      elevation: 0,
      title: Padding(
        padding: EdgeInsets.only(left: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            Text(
              "Location",
              style: TextStyle(
                color: const Color.fromARGB(255, 171, 171, 171),
                fontSize: 14,
              ),
            ),
            Text(
              "Jakarta, Indonesia",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.person_3_outlined, color: Colors.black),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.shopping_bag_outlined, color: Colors.black),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu, color: Colors.black),
        ),
      ],
    );
  }

  // default syntax apabila ingin mengambil ukuran dari sebuah widget yang 
  //menggunakan/mengimplement PreferredSizeWidget
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}