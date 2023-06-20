import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignInLogo extends StatelessWidget {
  final String logo;
  const SignInLogo({
    super.key,
    required this.logo,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      logo,
      height: 15.h,
      width: 15.h,
    );
  }
}
