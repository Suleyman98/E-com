import 'package:flutter/material.dart';

import '../../../app/app_sized_box.dart';
import '../sign_up/widgets/divider_text.dart';
import '../sign_up/widgets/single_side_divider.dart';

class DividerWithText extends StatelessWidget {
  const DividerWithText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AppSizedbox.w14,
        const SingleSideDivider(),
        AppSizedbox.w24,
        const DividerText(),
        AppSizedbox.w24,
        const SingleSideDivider(),
        AppSizedbox.w14,
      ],
    );
  }
}
