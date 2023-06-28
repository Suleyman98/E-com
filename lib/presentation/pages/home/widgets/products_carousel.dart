import 'package:flutter/material.dart';
import 'package:shopping_app/presentation/pages/home/widgets/single_product_container.dart';

import '../../../../app/app_padings.dart';

class ProductsCarousel extends StatelessWidget {
  const ProductsCarousel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: AppPaddings.h10,
        child: Row(
          children:
              List.generate(10, (index) => const SingleProductContainer()),
        ),
      ),
    );
  }
}
