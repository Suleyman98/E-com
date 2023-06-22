import 'package:flutter/material.dart';

import '../../../../app/app_text.dart';
import '../../widgets/custom_medium_title.dart';

class WelcomeTitle extends StatelessWidget {
  const WelcomeTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomMediumTitle(
      title: AppTexts.welcome,
    );
  }
}
