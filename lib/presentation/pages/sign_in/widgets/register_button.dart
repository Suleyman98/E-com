import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../app/app_colors.dart';
import '../../../../app/app_sized_box.dart';
import '../../../../app/app_text.dart';
import '../../widgets/custom_small_subtitle.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: ElevatedButton.styleFrom(fixedSize: Size(250.w, 20.h)),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CustomSmallSubtitle(subtitle: AppTexts.dontHaveAccount),
            AppSizedbox.w4,
            Text(
              AppTexts.register,
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(color: AppColors.primaryColor, fontSize: 12.sp),
            )
          ],
        ));
  }
}
