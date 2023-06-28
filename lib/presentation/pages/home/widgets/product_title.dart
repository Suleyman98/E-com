import 'package:flutter/material.dart';

import '../../../../app/app_padings.dart';
import '../../widgets/custom_medium_title.dart';

class ProductTitle extends StatelessWidget {
  const ProductTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: AppPaddings.h16,
      child:
          CustomMediumTitle(size: 13, title: 'MS - Nike Air Max 270 React...'),
    );
  }
}
