import 'package:flutter/material.dart';

import '../../../../app/app_border_radius.dart';

class CarouselContainer extends StatelessWidget {
  final String image;
  const CarouselContainer({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: AppBorderRadius.fivePixel,
          image: DecorationImage(fit: BoxFit.cover, image: AssetImage(image))),
    );
  }
}
