import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../app/app_colors.dart';

class HomeIndicator extends StatelessWidget {
  const HomeIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedSmoothIndicator(
      activeIndex: 1,
      count: 5,
      effect: SlideEffect(
          spacing: 8.0,
          radius: 100.0,
          dotWidth: 12.0,
          dotHeight: 12.0,
          paintStyle: PaintingStyle.fill,
          strokeWidth: 1.5,
          dotColor: AppColors.greyShade300,
          activeDotColor: AppColors.primaryColor),
    );
  }
}
