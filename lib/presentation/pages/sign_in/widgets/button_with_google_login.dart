import 'package:flutter/material.dart';

import '../../../../app/app_assets.dart';
import '../../../../app/app_text.dart';
import '../../widgets/custom_outlined_button.dart';

class ButtonForGoogleLogin extends StatelessWidget {
  const ButtonForGoogleLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomOutlinedButton(
      method: AppTexts.googleLogin,
      logo: AppAssets.googleLogo,
    );
  }
}
