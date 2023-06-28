import 'package:flutter/material.dart';

import '../../../../app/app_padings.dart';
import '../../../../app/app_text.dart';
import '../../widgets/custom_form_field.dart';

class HomeSearch extends StatelessWidget {
  const HomeSearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: AppPaddings.h16,
      child: CustomFormField(
          hint: AppTexts.searchProduct, icon: Icons.search, obscureText: false),
    );
  }
}
