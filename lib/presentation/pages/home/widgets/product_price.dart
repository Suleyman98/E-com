import 'package:flutter/material.dart';

import '../../../../app/app_padings.dart';
import '../../widgets/custom_primary_text.dart';

class ProductPrice extends StatelessWidget {
  final dynamic price;
  const ProductPrice({
    super.key,
    this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: AppPaddings.h16,
          child: CustomPrimaryText(text: '\$${price}', fontSize: 13),
        ));
  }
}
