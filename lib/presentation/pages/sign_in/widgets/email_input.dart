import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_app/cubits/login/login_cubit.dart';
import 'package:shopping_app/utilities/extensions/string_extensions.dart';

import '../../widgets/custom_form_field.dart';

class EmailInput extends StatelessWidget {
  const EmailInput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController =
        context.read<LoginCubit>().emailController;
    return CustomFormField(
      validator: (p0) {
        return p0.valueIsEmpty ?? p0.emailIsWrong;
      },
      hint: 'Your Email',
      icon: Icons.email,
      controller: emailController,
    );
  }
}
