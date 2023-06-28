import 'package:flutter/material.dart';

class DiscountPercentage extends StatelessWidget {
  const DiscountPercentage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      '24% Off',
      style: Theme.of(context)
          .textTheme
          .titleMedium!
          .copyWith(color: Colors.red, fontSize: 10),
    );
  }
}
