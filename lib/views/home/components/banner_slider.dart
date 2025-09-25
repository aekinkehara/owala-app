import 'dart:async';
import 'package:flutter/material.dart';
import 'package:owala_app/utils/const.dart';

class BannerSlider extends StatefulWidget {
  const BannerSlider({super.key});

  @override
  State<BannerSlider> createState() => _BannerSliderState();
}

class _BannerSliderState extends State<BannerSlider> {
  final PageController _pageController = PageController(initialPage: 1000);
  late Timer _timer;
  int _currentPage = 0;

  final List<String> banners = [
    "assets/images/banner_01.png.png",
    "assets/images/banner_02.png.png",
    "assets/images/banner_03.png.png",
  ];

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      if (_pageController.hasClients) {
        _pageController.nextPage(
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Banner
        ConstrainedBox(
          constraints: const BoxConstraints(maxHeight: 220, maxWidth: 510),
          child: PageView.builder(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index % banners.length;
              });
            },
            itemBuilder: (context, index) {
              final realIndex = index % banners.length;
              return _BannerImage(asset: banners[realIndex]);
            },
          ),
        ),

        const SizedBox(height: 8),

        /// Indicator
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            banners.length,
            (index) => AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              margin: const EdgeInsets.symmetric(horizontal: 4),
              height: 8,
              width: _currentPage == index ? 20 : 8,
              decoration: BoxDecoration(
                color: _currentPage == index ? const Color.fromARGB(255, 41, 41, 41): Colors.black.withOpacity(0.3),
                borderRadius: BorderRadius.circular(3),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _BannerImage extends StatelessWidget {
  final String asset;

  const _BannerImage({required this.asset});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(defaultPadding),
      child: ClipRRect(
        child: Image.asset(
          asset,
          fit: BoxFit.cover,
          width: double.infinity,
        ),
      ),
    );
  }
}
