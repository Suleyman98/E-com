import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:shopping_app/app/app_sized_box.dart';
import 'package:shopping_app/app/app_textstyle.dart';

import '../../../../app/app_padings.dart';
import '../../widgets/custom_form_field.dart';
import '../../widgets/logo_container.dart';
import '../widgets/sign_in_form.dart';
import '../widgets/sing_in_subtitle.dart';
import '../widgets/welcome_title.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const LogoContainer(),
              AppSizedbox.h14,
              const WelcomeTitle(),
              AppSizedbox.h8,
              const SingInSubtitle(),
              AppSizedbox.h28,
              const SignInForm(),
            ],
          ),
        ),
      ),
    );
  }
}
