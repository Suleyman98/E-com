import 'package:flutter/material.dart';
import 'package:shopping_app/presentation/pages/home/widgets/single_product_container.dart';

import '../../../../app/app_padings.dart';

class RecommendedProducts extends StatelessWidget {
  const RecommendedProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.a8,
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 10,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisExtent: 300, mainAxisSpacing: 16),
        itemBuilder: (context, index) {
          return const SingleProductContainer();
        },
      ),
    );
  }
}
