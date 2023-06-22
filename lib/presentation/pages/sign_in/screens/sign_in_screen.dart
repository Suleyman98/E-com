import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:shopping_app/app/app_sized_box.dart';
import '../../sign_up/widgets/sign_up_button.dart';
import '../../widgets/divider_with_text.dart';
import '../../widgets/logo_container.dart';
import '../widgets/button_with_fb_login.dart';
import '../widgets/button_with_google_login.dart';
import '../widgets/forgot_password_button.dart';
import '../widgets/register_button.dart';
import '../widgets/sign_in_form.dart';
import '../widgets/sign_in_subtitle.dart';
import '../widgets/sign_up_button.dart';
import '../widgets/welcome_title.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
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
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppSizedbox.h28,
                AppSizedbox.h10,
                const LogoContainer(),
                AppSizedbox.h14,
                const WelcomeTitle(),
                AppSizedbox.h8,
                const SingInSubtitle(),
                AppSizedbox.h28,
                const SignInForm(),
                AppSizedbox.h16,
                const SignInButton(),
                AppSizedbox.h20,
                const DividerWithText(),
                AppSizedbox.h16,
                const ButtonForGoogleLogin(),
                AppSizedbox.h8,
                const ButtonForFbLogin(),
                const ForgotPasswordButton(),
                const RegisterButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
