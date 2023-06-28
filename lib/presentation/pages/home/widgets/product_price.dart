import 'package:flutter/material.dart';

import '../../../../app/app_padings.dart';
import '../../widgets/custom_primary_text.dart';

class ProductPrice extends StatelessWidget {
  const ProductPrice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: AppPaddings.h16,
          child: CustomPrimaryText(text: '\$299,43', fontSize: 13),
        ));
  }
}
