import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_app/data/repositories.dart/login_repository.dart';
import 'package:shopping_app/utilities/alert_dialogs/alert_dialogs.dart';

class LoginCubit extends Cubit<bool> {
  LoginCubit() : super(false);
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  void login(BuildContext context) async {
    try {
      emit(true);
      bool flag = await LoginRepository()
          .login(emailController.text, passwordController.text);
      if (flag && context.mounted) {
        AlertDialogs.showSuccess(context);
        emit(false);
      }
    } catch (e) {
      AlertDialogs.showError(context);
      emit(false);
    }
  }

  void onLoginPressed(BuildContext context) {
    if (!loginFormKey.currentState!.validate()) {
      return;
    }
    login(context);
  }

  @override
  Future<void> close() {
    emailController.dispose();
    passwordController.dispose();
    return super.close();
  }
}
