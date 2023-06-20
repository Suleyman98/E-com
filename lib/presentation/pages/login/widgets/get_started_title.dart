import 'package:flutter/material.dart';

import '../../../../app/app_text.dart';
import '../../widgets/custom_medium_title.dart';

class GetStartedTitle extends StatelessWidget {
  const GetStartedTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomMediumTitle(title: AppTexts.getStarted);
  }
}
