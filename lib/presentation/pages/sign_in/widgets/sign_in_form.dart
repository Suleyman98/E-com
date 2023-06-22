import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_app/presentation/pages/sign_in/widgets/email_input.dart';
import 'package:shopping_app/presentation/pages/sign_in/widgets/password_input.dart';

import '../../../../app/app_padings.dart';
import '../../../../app/app_sized_box.dart';
import '../../../../cubits/login/login_cubit.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final loginCubit = context.read<LoginCubit>();
    final loginFormKey = loginCubit.loginFormKey;
    return Padding(
      padding: AppPaddings.h16,
      child: Form(
          key: loginFormKey,
          child: Column(
            children: [
              const EmailInput(),
              AppSizedbox.h10,
              const PasswordInput(),
            ],
          )),
    );
  }
}
