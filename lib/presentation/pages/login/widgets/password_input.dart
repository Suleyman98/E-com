import 'package:flutter/material.dart';

import '../../widgets/custom_form_field.dart';

class PasswordInput extends StatelessWidget {
  const PasswordInput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomFormField(hint: 'Password', icon: Icons.lock);
  }
}
