import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:shopping_app/app/app_sized_box.dart';

import 'package:shopping_app/presentation/pages/widgets/logo_container.dart';

import '../widgets/sign_up_form.dart';
import '../widgets/get_started_title.dart';
import '../widgets/new_acc_subtitle.dart';
import '../widgets/already_have_acc_btn.dart';
import '../widgets/sign_up_button.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2));
    FlutterNativeSplash.remove();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppSizedbox.h28,
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
