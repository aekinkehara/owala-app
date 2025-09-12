import 'package:flutter/material.dart';

class SizeConfig {
  // class mediaQuery adalah class yang berfungsi untuk membuat apk menjadi responsif dgn cara mengambil ukuran aktual pada layar platform
  static MediaQueryData _mediaQueryData = MediaQueryData.fromView(
    // ignore: deprecated_member_use
    WidgetsBinding.instance.window
  );
  // variabel untuk menampung defaulr size dari apk sebelum di deploy ke platform yang spesifik
  // dan mendapatkan ukuran yang aktual dari platform tersebut, (misal : dideploy ke platform android)
  static double screenWidth = 0.0;
  static double screenHeight = 0.0;
  static double defaultSize = 0.0;

  // fungsi dari function ini => untuk pemanggilan awal ketika apk dijalankan dan untuk medapatkan ukuean dari layar platform
  void init(BuildContext context) {
    // berfungsi untk mengambil ukuran aktual dari platform karna di dalam variabel _mediaQueryData...
    // du dalamnya memanggil class Media Query, yang class ini sendiri berfungsi untuk mengambil ukyran aktual dari platform
    _mediaQueryData = MediaQuery.of(context);
    // mengambil ukuran width aja
    screenWidth = _mediaQueryData.size.width;
    // untuk mengambil ukuran height aja
    screenHeight = _mediaQueryData.size.height;
  }
}

// menggunakan size standar dari handphone iphone x (height = 812 x width = 375)
double getProporsionateScreenHeight(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight;
  // ini adalah perhitungan untuk menghasilkan nilai dan ukuran Objek yang responsif dengan platform
  return (inputHeight / 812.0) * screenHeight;
}
double getProporsionateScreenWidth(double inputWidth) {
  double screenWidth = SizeConfig.screenWidth;
  return (inputWidth / 375.0) * screenWidth;
}