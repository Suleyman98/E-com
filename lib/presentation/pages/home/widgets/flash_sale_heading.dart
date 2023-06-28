import 'package:flutter/material.dart';

import 'heading_for_vertical_list.dart';

class FlashSaleHeading extends StatelessWidget {
  const FlashSaleHeading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const HeadingForVerticalList(
        leftTitle: 'Flash Sale', rightTitle: 'See More');
  }
}
