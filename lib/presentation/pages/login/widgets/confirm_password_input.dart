import 'package:flutter/material.dart';

import '../../widgets/custom_form_field.dart';

class ConfirmPasswordInput extends StatelessWidget {
  const ConfirmPasswordInput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomFormField(hint: 'Password Again', icon: Icons.lock);
  }
}
