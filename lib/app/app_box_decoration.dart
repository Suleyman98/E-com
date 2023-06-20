import 'package:flutter/material.dart';
import 'package:shopping_app/app/app_border_radius.dart';

import 'app_colors.dart';
import 'app_fonts.dart';

class AppBoxDecoration {
  AppBoxDecoration._();

  static InputDecorationTheme get inputDecoration => InputDecorationTheme(
      prefixIconColor: AppColors.greyShade400,
      hintStyle: AppFonts.intputHintStyle,
      border: OutlineInputBorder(
          borderRadius: AppBorderRadius.fivePixel,
          borderSide: BorderSide(
              color: AppColors.greyInputBorder, style: BorderStyle.solid)),
      errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.errorColor)));

  static BoxDecoration get logoContainerDecoration => BoxDecoration(
        borderRadius: AppBorderRadius.logoRadius,
        color: AppColors.primaryColor,
      );
}
