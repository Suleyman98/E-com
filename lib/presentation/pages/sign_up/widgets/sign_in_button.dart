import 'package:flutter/material.dart';

import '../../../../app/app_size.dart';
import '../../../../app/app_text.dart';
import '../../widgets/custom_elevated_button.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
      label: AppTexts.sign,
      size: AppSize.elevatedButtonSize(context),
    );
  }
}
