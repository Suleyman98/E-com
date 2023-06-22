import 'package:flutter/material.dart';

import '../../../../app/app_padings.dart';
import '../../../../app/app_sized_box.dart';
import '../../widgets/custom_form_field.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.h16,
      child: Form(
          child: Column(
        children: [
          const CustomFormField(hint: 'Your Email', icon: Icons.email),
          AppSizedbox.h10,
          const CustomFormField(hint: 'Password', icon: Icons.lock),
        ],
      )),
    );
  }
}
