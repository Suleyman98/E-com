import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  final String hint;
  final IconData icon;
  const CustomFormField({
    super.key,
    required this.hint,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: Icon(icon),
        hintText: hint,
      ),
    );
  }
}
