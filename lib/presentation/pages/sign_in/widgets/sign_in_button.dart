import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app/app_size.dart';
import '../../../../app/app_text.dart';
import '../../../../cubits/login/login_cubit.dart';
import '../../widgets/custom_elevated_button.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final loginCubit = context.read<LoginCubit>();
    return CustomElevatedButton(
        onPressed: () {
          loginCubit.onLoginPressed();
        },
        label: AppTexts.sign,
        size: AppSize.elevatedButtonSize(context));
  }
}
