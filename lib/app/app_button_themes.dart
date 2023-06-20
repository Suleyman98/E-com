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
}
