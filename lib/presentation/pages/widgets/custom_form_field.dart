import 'package:flutter/material.dart';
import 'package:shopping_app/app/app_fonts.dart';

class CustomFormField extends StatelessWidget {
  final String hint;
  final IconData icon;
  final bool obscureText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  const CustomFormField({
    Key? key,
    required this.hint,
    required this.icon,
    required this.obscureText,
    this.controller,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: AppFonts.neutralGrey700,
      obscureText: obscureText,
      controller: controller,
      validator: validator,
      decoration: InputDecoration(
        prefixIcon: Icon(icon),
        hintText: hint,
      ),
    );
  }
}
