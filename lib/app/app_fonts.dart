import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppFonts {
  AppFonts._();

  static TextStyle get poopinsTitle =>
      GoogleFonts.poppins(fontSize: 16.sp, fontWeight: FontWeight.w700);
  static TextStyle get poppinsBodySmall => GoogleFonts.poppins(
        color: const Color.fromRGBO(144, 152, 177, 1),
        fontSize: 12.sp,
      );
}
