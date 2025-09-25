import 'package:flutter/material.dart';
import 'package:owala_app/utils/const.dart';

class OnboardingContent extends StatelessWidget {
  const OnboardingContent({
    super.key,
    required this.text,
    required this.image,
  });

  final String text, image;

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Stack(
        children: [
          Positioned.fill(
            child: SafeArea(
              child: Column(
                children: [
                  const SizedBox(height: 60),
                  Image.asset(
                    "assets/images/VW logo.png",
                    fit: BoxFit.contain,
                    height: 300,
                  ),
                  SizedBox(height: 30),
                  const Text(
                    "Fashion is Political.",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    text,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: textColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
