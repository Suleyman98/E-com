import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppSize {
  AppSize._();

  static double fullHeight(context) => MediaQuery.of(context).size.height;
  static double fullWidth(context) => MediaQuery.of(context).size.width;
  static Size elevatedButtonSize(context) =>
      Size(AppSize.fullWidth(context) - 28.w, 50.h);
}
