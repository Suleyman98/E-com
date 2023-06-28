import 'package:flutter/material.dart';

import '../../../../app/app_assets.dart';
import '../../../../app/app_padings.dart';
import '../../widgets/custom_category_container_circle.dart';

class CategoryItems extends StatelessWidget {
  const CategoryItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: AppPaddings.h8,
        child: Row(
          children: List.generate(
              35,
              (index) => const CustomCategoryContainerCircle(
                    assetName: AppAssets.categoryIcon,
                    categoryName: 'Man Shirt',
                  )),
        ),
      ),
    );
  }
}
