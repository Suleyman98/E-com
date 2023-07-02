import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:shopping_app/app/app_sized_box.dart';
import '../../../../cubits/home/home_cubit.dart';
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

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2));
    FlutterNativeSplash.remove();
    context.read<HomeCubit>().getDatas();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const HomeBottomBar(),
      appBar: const HomeAppbar(),
      body: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          if (state is HomeLoading || state is HomeInitial) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is HomeSuccess) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  AppSizedbox.h10,
                  const HomeCarousel(),
                  const HomeIndicator(),
                  AppSizedbox.h10,
                  const CategoryHeading(),
                  CategoryItems(categories: state.categories),
                  AppSizedbox.h10,
                  const FlashSaleHeading(),
                  ProductsCarousel(products: state.products),
                  AppSizedbox.h10,
                  const FlashSaleHeading(),
                  ProductsCarousel(products: state.products.reversed.toList()),
                  const RecommendedProductBanner(),
                  RecommendedProducts(
                    products: state.products,
                  )
                ],
              ),
            );
          } else {
            return const Center(
              child: Text('Something went wrong'),
            );
          }
        },
      ),
    );
  }
}
