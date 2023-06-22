import 'package:flutter/material.dart';

import '../../widgets/custom_form_field.dart';

class EmailInput extends StatelessWidget {
  const EmailInput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomFormField(hint: 'Your Email', icon: Icons.email);
  }
}
