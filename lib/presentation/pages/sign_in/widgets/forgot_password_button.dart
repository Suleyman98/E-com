import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../app/app_colors.dart';
import '../../../../app/app_text.dart';

class ForgotPasswordButton extends StatelessWidget {
  const ForgotPasswordButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: Text(
          AppTexts.forgotPass,
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .copyWith(color: AppColors.primaryColor, fontSize: 12.sp),
        ));
  }
}
