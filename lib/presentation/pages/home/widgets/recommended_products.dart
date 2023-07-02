import 'package:flutter/material.dart';
import 'package:shopping_app/presentation/pages/home/widgets/single_product_container.dart';

import '../../../../app/app_padings.dart';
import '../../../../data/models/product_model.dart';

class RecommendedProducts extends StatelessWidget {
  final List<ProductModel> products;
  const RecommendedProducts({
    super.key,
    required this.products,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.a8,
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: products.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisExtent: 300, mainAxisSpacing: 16),
        itemBuilder: (context, index) {
          return SingleProductContainer(
            product: products[index],
          );
        },
      ),
    );
  }
}
