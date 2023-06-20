import 'package:flutter/material.dart';

import '../../../app/app_colors.dart';

class CustomElevatedButton extends StatelessWidget {
  final Size size;
  final String label;
  final Function()? func;
  const CustomElevatedButton({
    super.key,
    required this.label,
    this.func,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
            backgroundColor:
                MaterialStateProperty.all<Color>(AppColors.primaryColor),
            fixedSize: MaterialStateProperty.all<Size>(size)),
        onPressed: func,
        child: Text(
          label,
          style: Theme.of(context).textTheme.labelMedium,
        ));
  }
}
