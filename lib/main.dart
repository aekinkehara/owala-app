import 'package:flutter/material.dart';
import 'package:owala_app/models/products_model.dart';
import 'package:owala_app/utils/const.dart';
import 'package:owala_app/views/auth/login_screen.dart';
import 'package:owala_app/views/auth/register_screen.dart';
import 'package:owala_app/views/detail/detail_screen.dart';
import 'package:owala_app/views/home/catalogue_screen.dart';
import 'package:owala_app/views/onboarding/onboarding_screen.dart';

void main() {
  runApp(OwalaApp());
}

class OwalaApp extends StatefulWidget {
  const OwalaApp({super.key});

  @override
  State<OwalaApp> createState() => _OwalaAppState();
}

class _OwalaAppState extends State<OwalaApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Vivienne Westwood",
      theme: ThemeData(
        fontFamily: 'Helvetica',
        visualDensity: VisualDensity.adaptivePlatformDensity, // mengatur kepadatan di setiap platform
        textTheme: TextTheme(
          bodyMedium: TextStyle(color: textColor),
          bodySmall: TextStyle(color: textColor),
        ),
        scaffoldBackgroundColor: Colors.white,
      ),
      // initialRoute: utk mendefinisikan kelas apa yang akan tampil pertama kali 
      //saat aplikasi dijalankan 
      initialRoute: '/onboarding',
      routes: {
        '/onboarding' : (context) => OnboardingScreen(),
        '/login' : (context) => LoginScreen(),
        '/register' : (context) => RegisterScreen(),
        '/catalogue': (context) => CatalogueScreen(),
        '/detail': (context) => DetailScreen(
          // ModalRoute adalah class yang wajib dipanggil ketika akan melakukan navigasi
          product: ModalRoute.of(context)!.settings.arguments as ProductsModel,
        ),
      },
    );
  }
}