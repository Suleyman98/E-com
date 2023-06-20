import 'package:flutter/material.dart';

import 'app_fonts.dart';

class AppTextThemes {
  AppTextThemes._();
  static TextTheme get appTextTheme => TextTheme(
      titleMedium: AppFonts.poopinsTitle,
      bodySmall: AppFonts.poppinsBodySmall,
      labelMedium: AppFonts.buttonTextStyle);
}
