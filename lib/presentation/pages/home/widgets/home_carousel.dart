import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../../app/app_assets.dart';
import '../../../../app/app_padings.dart';
import 'carousel_container.dart';

class HomeCarousel extends StatelessWidget {
  const HomeCarousel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.a16,
      child: CarouselSlider(
        items: List.generate(5,
            (index) => const CarouselContainer(image: AppAssets.carouselImage)),
        options: CarouselOptions(
          viewportFraction: 1,
        ),
      ),
    );
  }
}
