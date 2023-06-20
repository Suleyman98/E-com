import 'package:flutter/cupertino.dart';

import '../../../../app/app_size.dart';
import '../../../../app/app_text.dart';
import '../../widgets/custom_elevated_button.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
        label: AppTexts.singUp, size: AppSize.elevatedButtonSize(context));
  }
}
