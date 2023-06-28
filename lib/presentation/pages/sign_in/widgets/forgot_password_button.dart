import 'package:flutter/material.dart';
import '../../../../app/app_text.dart';
import '../../widgets/custom_primary_text.dart';

class ForgotPasswordButton extends StatelessWidget {
  const ForgotPasswordButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: const CustomPrimaryText(
          fontSize: 12,
          text: AppTexts.forgotPass,
        ));
  }
}
