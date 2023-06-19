import 'package:flutter/material.dart';
import 'app_box_decoration.dart';
import 'app_colors.dart';
import 'app_text_themes.dart';

class AppTheme {
  AppTheme._();

  static ThemeData get lightTheme => ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
        useMaterial3: true,
        inputDecorationTheme: AppBoxDecoration.inputDecoration,
        textTheme: AppTextThemes.appTextTheme,
      );
}
