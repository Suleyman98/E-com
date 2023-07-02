import 'package:flutter/material.dart';
import 'package:shopping_app/presentation/pages/home/widgets/single_product_container.dart';

import '../../../../app/app_padings.dart';
import '../../../../data/models/product_model.dart';

class ProductsCarousel extends StatelessWidget {
  final List<ProductModel> products;
  const ProductsCarousel({
    super.key,
    required this.products,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: AppPaddings.h10,
        child: Row(
          children: List.generate(
              products.length,
              (index) => SingleProductContainer(
                    product: products[index],
                  )),
        ),
      ),
    );
  }
}
