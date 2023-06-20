import 'package:flutter/material.dart';

import '../../../app/app_size.dart';
import '../sign_up/widgets/sign_in_logo.dart';

class CustomOutlinedButton extends StatelessWidget {
  final String logo;
  final String method;
  const CustomOutlinedButton({
    super.key,
    required this.logo,
    required this.method,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: OutlinedButton.styleFrom(
            elevation: 0, fixedSize: AppSize.elevatedButtonSize(context)),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SignInLogo(logo: logo),
            const Spacer(),
            Text(
              method,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const Spacer(),
          ],
        ));
  }
}
