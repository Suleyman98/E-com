import 'package:flutter/material.dart';

import '../../../../app/app_padings.dart';
import '../../widgets/custom_medium_title.dart';
import '../../widgets/custom_primary_text.dart';

class HeadingForVerticalList extends StatelessWidget {
  final String leftTitle;
  final String rightTitle;
  const HeadingForVerticalList({
    super.key,
    required this.leftTitle,
    required this.rightTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.a16,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomMediumTitle(title: leftTitle, size: 24),
          CustomPrimaryText(
            text: rightTitle,
            fontSize: 14,
          )
        ],
      ),
    );
  }
}
