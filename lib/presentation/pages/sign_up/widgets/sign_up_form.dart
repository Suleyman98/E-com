import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_app/presentation/pages/sign_up/widgets/email_input.dart';
import 'package:shopping_app/presentation/pages/sign_up/widgets/password_input.dart';

import '../../../../app/app_padings.dart';
import '../../../../app/app_sized_box.dart';
import '../../../../cubits/register/register_cubit.dart';
import 'confirm_password_input.dart';

import 'full_name_input.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final registerCubit = context.read<RegisterCubit>();
    final registerFormKey = registerCubit.registerFormKey;
    return Padding(
      padding: AppPaddings.h16,
      child: Form(
        key: registerFormKey,
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
