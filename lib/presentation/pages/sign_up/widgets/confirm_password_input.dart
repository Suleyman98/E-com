import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_app/utilities/extensions/string_extensions.dart';

import '../../../../cubits/register/register_cubit.dart';
import '../../widgets/custom_form_field.dart';

class ConfirmPasswordInput extends StatelessWidget {
  const ConfirmPasswordInput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final registerCubit = context.read<RegisterCubit>();
    return CustomFormField(
      hint: 'Password Again',
      icon: Icons.lock,
      controller: registerCubit.confirmPasswordController,
      validator: (p0) {
        return p0.valueIsEmpty ??
            p0.confirmPassword(registerCubit.passwordController.text);
      },
    );
  }
}
