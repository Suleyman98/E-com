import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../app/app_border_radius.dart';
import '../../../app/app_colors.dart';
import '../../../app/app_padings.dart';
import '../../../app/app_sized_box.dart';
import 'custom_small_subtitle.dart';

class CustomCategoryContainerCircle extends StatelessWidget {
  final String assetName;
  final String categoryName;
  const CustomCategoryContainerCircle({
    super.key,
    required this.assetName,
    required this.categoryName,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: AppPaddings.h8,
          width: 70,
          height: 70,
          decoration: BoxDecoration(
              border: Border.all(color: AppColors.greyShade300),
              borderRadius: AppBorderRadius.circular),
          child: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              assetName,
              height: 24,
              width: 24,
            ),
          ),
        ),
        AppSizedbox.h10,
        CustomSmallSubtitle(subtitle: categoryName)
      ],
    );
  }
}
