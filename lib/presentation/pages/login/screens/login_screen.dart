import 'package:flutter/material.dart';
import 'package:shopping_app/app/app_sized_box.dart';

import 'package:shopping_app/presentation/pages/widgets/logo_container.dart';

import '../../widgets/sign_up_form.dart';
import '../widgets/get_started_title.dart';
import '../widgets/new_acc_subtitle.dart';
import '../widgets/sign_in_button.dart';
import '../widgets/sign_up_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const LogoContainer(),
              AppSizedbox.h16,
              const GetStartedTitle(),
              AppSizedbox.h16,
              const NewAccountSubtitle(),
              AppSizedbox.h28,
              const SignUpForm(),
              AppSizedbox.h10,
              const SignUpButton(),
              AppSizedbox.h10,
              const AlreadySignInButton(),
            ],
          ),
        ),
      ),
    );
  }
}
