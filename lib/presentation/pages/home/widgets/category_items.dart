import 'package:flutter/material.dart';

import '../../../../app/app_assets.dart';
import '../../../../app/app_padings.dart';
import '../../widgets/custom_category_container_circle.dart';

class CategoryItems extends StatelessWidget {
  final List<String> categories;
  const CategoryItems({
    super.key, required this.categories,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: AppPaddings.h8,
        child: Row(
          children: List.generate(
              categories.length,
              (index) => const CustomCategoryContainerCircle(
                    assetName: AppAssets.categoryIcon,
                    categoryName: 'Man Shirt',
                  )),
        ),
      ),
    );
  }
}
