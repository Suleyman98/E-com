import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_app/data/repositories.dart/login_repository.dart';

class LoginCubit extends Cubit<bool> {
  LoginCubit() : super(true);
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  void login() async {
    try {
      emit(true);
      await LoginRepository()
          .login(emailController.text, passwordController.text);
      emit(false);
    } catch (e) {}
  }

  void onLoginPressed() {
    if (!loginFormKey.currentState!.validate()) {
      return;
    }
    login();
  }

  @override
  Future<void> close() {
    emailController.dispose();
    passwordController.dispose();
    return super.close();
  }
}
