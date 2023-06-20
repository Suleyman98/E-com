import 'package:flutter/material.dart';

class DividerText extends StatelessWidget {
  const DividerText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'OR',
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }
}
