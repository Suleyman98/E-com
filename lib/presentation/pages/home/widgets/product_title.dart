import 'package:flutter/material.dart';

import '../../../../app/app_padings.dart';
import '../../widgets/custom_medium_title.dart';

class ProductTitle extends StatelessWidget {
  final String? title;
  const ProductTitle({
    super.key, required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: AppPaddings.h16,
      child:
          CustomMediumTitle(size: 13, title:title ?? 'MS - Nike Air Max 270 React...'),
    );
  }
}
