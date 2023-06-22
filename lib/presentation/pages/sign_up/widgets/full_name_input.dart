import 'package:flutter/material.dart';

import '../../widgets/custom_form_field.dart';

class FullNameInput extends StatelessWidget {
  const FullNameInput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomFormField(hint: 'Full Name', icon: Icons.person);
  }
}
