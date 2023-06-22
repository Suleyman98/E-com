import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_app/cubits/login/login_cubit.dart';
import 'package:shopping_app/utilities/extensions/string_extensions.dart';

import '../../widgets/custom_form_field.dart';

class PasswordInput extends StatelessWidget {
  const PasswordInput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    TextEditingController passwordController =
        context.read<LoginCubit>().passwordController;
    return CustomFormField(
      hint: 'Password',
      icon: Icons.lock,
      controller: passwordController,
      validator: (p0) {
        return p0.valueIsEmpty;
      },
    );
  }
}
