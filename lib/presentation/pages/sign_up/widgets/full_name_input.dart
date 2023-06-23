import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_app/utilities/extensions/string_extensions.dart';

import '../../../../cubits/register/register_cubit.dart';
import '../../widgets/custom_form_field.dart';

class FullNameInput extends StatelessWidget {
  const FullNameInput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final registerCubit = context.read<RegisterCubit>();
    return CustomFormField(
      obscureText: false,
      hint: 'Full Name',
      icon: Icons.person,
      controller: registerCubit.fullNameController,
      validator: (p0) {
        return p0.valueIsEmpty ?? p0.fullNameCheck;
      },
    );
  }
}
