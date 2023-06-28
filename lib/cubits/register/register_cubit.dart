import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repositories.dart/login_repository.dart';
import '../../utilities/alert_dialogs/alert_dialogs.dart';

class RegisterCubit extends Cubit<bool> {
  RegisterCubit() : super(false);
  final GlobalKey<FormState> registerFormKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final TextEditingController fullNameController = TextEditingController();

  void onRegisterPressed(BuildContext context) {
    if (!registerFormKey.currentState!.validate()) {
      return;
    }
    register(context);
  }

  void register(BuildContext context) async {
    try {
      emit(true);
      bool flag = await LoginRepository()
          .register(emailController.text, passwordController.text);
      if (flag && context.mounted) {
        AlertDialogs.showSuccess(context);
        emit(false);
      }
    } catch (e) {
      AlertDialogs.showError(context);
      emit(false);
    }
  }

  @override
  Future<void> close() {
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    fullNameController.dispose();
    return super.close();
  }
}
