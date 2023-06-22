import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../app/app_colors.dart';

class SingleSideDivider extends StatelessWidget {
  const SingleSideDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Divider(
      thickness: 2.h,
      color: AppColors.neutralLight,
    ));
  }
}
