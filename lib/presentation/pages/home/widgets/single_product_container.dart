import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_app/app/app_padings.dart';
import 'package:shopping_app/presentation/pages/home/widgets/product_price.dart';
import 'package:shopping_app/presentation/pages/home/widgets/product_title.dart';
import '../../../../app/app_assets.dart';
import '../../../../app/app_border_radius.dart';
import '../../../../app/app_colors.dart';
import '../../../../app/app_sized_box.dart';
import 'before_discount_price.dart';
import 'discount_percentage.dart';

class SingleProductContainer extends StatelessWidget {
  const SingleProductContainer({
    super.key,
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
        Image.asset(AppAssets.productImage),
        AppSizedbox.h8,
        const ProductTitle(),
        AppSizedbox.h8,
        const ProductPrice(),
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
