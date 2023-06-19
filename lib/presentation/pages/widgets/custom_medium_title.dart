import 'package:flutter/material.dart';

class CustomMediumTitle extends StatelessWidget {
  final String title;
  const CustomMediumTitle({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Text(
      title,
      style: textTheme.titleMedium,
    );
  }
}
