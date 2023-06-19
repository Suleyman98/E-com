import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_colors.dart';
import 'app_textstyle.dart';

class AppBoxDecoration {
  AppBoxDecoration._();

  static InputDecorationTheme get inputDecoration => InputDecorationTheme(
      prefixIconColor: AppColors.greyShade400,
      hintStyle: AppTextStyles.intputHintStyle,
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.r),
          borderSide: BorderSide(
              color: AppColors.greyInputBorder, style: BorderStyle.solid)),
      errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.errorColor)));

  static BoxDecoration get logoContainerDecoration => BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        color: AppColors.primaryColor,
      );
}
