import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../app/app_assets.dart';
import '../../../../app/app_border_radius.dart';
import '../../../../app/app_padings.dart';

class RecommendedProductBanner extends StatelessWidget {
  const RecommendedProductBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.a16,
      child: Container(
        height: 200.h,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: AppBorderRadius.fivePixel,
            image: const DecorationImage(
                fit: BoxFit.cover, image: AssetImage(AppAssets.carouselImage))),
      ),
    );
  }
}
