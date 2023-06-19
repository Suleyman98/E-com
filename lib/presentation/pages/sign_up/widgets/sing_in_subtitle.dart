import 'package:flutter/material.dart';

import '../../../../app/app_text.dart';
import '../../widgets/custom_small_subtitle.dart';

class SingInSubtitle extends StatelessWidget {
  const SingInSubtitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomSmallSubtitle(subtitle: AppTexts.signIn);
  }
}
