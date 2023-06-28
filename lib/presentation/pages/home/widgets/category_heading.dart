import 'package:flutter/material.dart';

import '../../../../app/app_text.dart';
import 'heading_for_vertical_list.dart';

class CategoryHeading extends StatelessWidget {
  const CategoryHeading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const HeadingForVerticalList(
      leftTitle: 'Category',
      rightTitle: AppTexts.moreCategory,
    );
  }
}
