import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class AppTextStyles {
  AppTextStyles._();

  static TextStyle get intputHintStyle => GoogleFonts.poppins(
      color: AppColors.grey, fontWeight: FontWeight.w400, fontSize: 12.sp);
}
