import 'package:flutter/material.dart';
import 'package:shopping_app/app/app_sized_box.dart';
import '../widgets/category_heading.dart';
import '../widgets/category_items.dart';
import '../widgets/flash_sale_heading.dart';
import '../widgets/home_appbar.dart';
import '../widgets/home_bottom_navbar.dart';
import '../widgets/home_carousel.dart';
import '../widgets/home_indicator.dart';
import '../widgets/products_carousel.dart';
import '../widgets/recommended_banner.dart';
import '../widgets/recommended_products.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const HomeBottomBar(),
      appBar: const HomeAppbar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppSizedbox.h10,
            const HomeCarousel(),
            const HomeIndicator(),
            AppSizedbox.h10,
            const CategoryHeading(),
            const CategoryItems(),
            AppSizedbox.h10,
            const FlashSaleHeading(),
            const ProductsCarousel(),
            AppSizedbox.h10,
            const FlashSaleHeading(),
            const ProductsCarousel(),
            const RecommendedProductBanner(),
            const RecommendedProducts()
          ],
        ),
      ),
    );
  }
}
