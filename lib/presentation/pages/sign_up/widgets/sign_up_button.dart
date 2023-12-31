import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app/app_size.dart';
import '../../../../app/app_text.dart';
import '../../../../cubits/register/register_cubit.dart';
import '../../widgets/custom_elevated_button.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final registerCubit = context.read<RegisterCubit>();
    return BlocBuilder<RegisterCubit, bool>(
      builder: (context, state) {
        return CustomElevatedButton(
            isLoading: state,
            onPressed: () {
              registerCubit.onRegisterPressed(context);
            },
            label: AppTexts.singUp,
            size: AppSize.elevatedButtonSize(context));
      },
    );
  }
}
