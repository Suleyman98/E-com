import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../app/app_assets.dart';
import '../../../app/app_box_decoration.dart';

class LogoContainer extends StatelessWidget {
  const LogoContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: AppBoxDecoration.logoContainerDecoration,
      width: 72.w,
      height: 72.h,
      child: SvgPicture.asset(AppAssets.appLogo),
    );
  }
}
