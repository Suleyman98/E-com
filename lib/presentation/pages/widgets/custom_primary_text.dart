import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../app/app_colors.dart';

class CustomPrimaryText extends StatelessWidget {
  final double fontSize;
  final String text;
  const CustomPrimaryText({
    super.key,
    required this.text,
    required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context)
          .textTheme
          .headlineMedium!
          .copyWith(color: AppColors.primaryColor, fontSize: fontSize.sp),
    );
  }
}
