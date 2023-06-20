import 'package:flutter/material.dart';

import 'app_border_radius.dart';
import 'app_colors.dart';
import 'app_text_themes.dart';

class AppButtonThemes {
  AppButtonThemes._();
  static get elevatedButtonTheme => ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: AppBorderRadius.fivePixel),
            backgroundColor: AppColors.primaryColor,
            elevation: 15,
            textStyle: AppTextThemes.appTextTheme.labelMedium),
      );
  static get outlineButtonTheme => OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
            side: const BorderSide(style: BorderStyle.solid, width: 0.6),
            shape: RoundedRectangleBorder(
                borderRadius: AppBorderRadius.fivePixel,
                side: BorderSide(color: AppColors.neutralLight, width: 1)),
            backgroundColor: AppColors.whiteColor,
            textStyle: AppTextThemes.appTextTheme.labelMedium),
      );
}
