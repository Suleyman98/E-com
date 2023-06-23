import 'package:flutter/material.dart';

import '../../../app/app_colors.dart';

class CustomElevatedButton extends StatelessWidget {
  final Size size;
  final bool? isLoading;
  final String label;
  final Function()? onPressed;
  const CustomElevatedButton({
    super.key,
    required this.label,
    this.onPressed,
    required this.size,
    this.isLoading,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
            backgroundColor:
                MaterialStateProperty.all<Color>(AppColors.primaryColor),
            elevation: MaterialStateProperty.all<double>(15),
            fixedSize: MaterialStateProperty.all<Size>(size)),
        onPressed: onPressed,
        child: isLoading == true
            ? const CircularProgressIndicator()
            : Text(
                label,
                style: Theme.of(context).textTheme.labelMedium,
              ));
  }
}
