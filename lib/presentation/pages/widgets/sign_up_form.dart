import 'package:flutter/material.dart';

import '../../../app/app_padings.dart';
import '../../../app/app_sized_box.dart';
import '../login/widgets/confirm_password_input.dart';
import '../login/widgets/email_input.dart';
import '../login/widgets/full_name_input.dart';
import '../login/widgets/password_input.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.h16,
      child: Form(
        child: Column(children: [
          const FullNameInput(),
          AppSizedbox.h6,
          const EmailInput(),
          AppSizedbox.h6,
          const PasswordInput(),
          AppSizedbox.h6,
          const ConfirmPasswordInput(),
        ]),
      ),
    );
  }
}