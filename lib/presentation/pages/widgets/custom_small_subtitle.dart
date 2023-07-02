import 'package:flutter/material.dart';

class CustomSmallSubtitle extends StatelessWidget {
  final String subtitle;
  const CustomSmallSubtitle({
    super.key,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      subtitle,
      style: Theme.of(context)
          .textTheme
          .bodySmall!
          .copyWith(decoration: TextDecoration.lineThrough),
    );
  }
}
