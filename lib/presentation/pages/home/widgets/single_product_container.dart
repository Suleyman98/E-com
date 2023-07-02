import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_app/app/app_padings.dart';
import 'package:shopping_app/presentation/pages/home/widgets/product_price.dart';
import 'package:shopping_app/presentation/pages/home/widgets/product_title.dart';
import '../../../../app/app_assets.dart';
import '../../../../app/app_border_radius.dart';
import '../../../../app/app_colors.dart';
import '../../../../app/app_sized_box.dart';
import '../../../../data/models/product_model.dart';
import 'before_discount_price.dart';
import 'discount_percentage.dart';

class SingleProductContainer extends StatelessWidget {
  final ProductModel? product;
  const SingleProductContainer({
    super.key,
    this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: AppPaddings.h8,
      padding: AppPaddings.v24 + AppPaddings.h8,
      width: 140.w,
      height: 230.h,
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.greyShade400),
          borderRadius: AppBorderRadius.fivePixel),
      child: Column(children: [
        Image.network(
          product != null
              ? product!.image!
              : 'https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg',
          height: 100.h,
          width: 100.w,
        ),
        AppSizedbox.h8,
        ProductTitle(
            title: product != null
                ? '${product!.title!.substring(0, 18)}...'
                : 'Unknown'),
        AppSizedbox.h8,
        ProductPrice(price: product != null ? product!.price : 0),
        AppSizedbox.h8,
        Padding(
          padding: AppPaddings.h16,
          child: Row(
            children: [
              const BeforDiscountPrice(),
              AppSizedbox.w8,
              const DiscountPercentage(),
            ],
          ),
        )
      ]),
    );
  }
}
