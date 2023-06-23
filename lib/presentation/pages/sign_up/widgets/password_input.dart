import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_app/utilities/extensions/string_extensions.dart';

import '../../../../cubits/register/register_cubit.dart';
import '../../widgets/custom_form_field.dart';

class PasswordInput extends StatelessWidget {
  const PasswordInput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final registerCubit = context.read<RegisterCubit>();
    return CustomFormField(
      obscureText: true,
      hint: 'Password',
      icon: Icons.lock,
      controller: registerCubit.passwordController,
      validator: (p0) {
        return p0.valueIsEmpty;
      },
    );
  }
}
