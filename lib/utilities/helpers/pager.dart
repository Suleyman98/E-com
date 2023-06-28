import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_app/cubits/login/login_cubit.dart';
import 'package:shopping_app/cubits/register/register_cubit.dart';
import 'package:shopping_app/presentation/pages/sign_in/screens/sign_in_screen.dart';
import 'package:shopping_app/presentation/pages/sign_up/screens/sign_up_screen.dart';

class Pager {
  Pager._();
  static Widget get login => BlocProvider<LoginCubit>(
        create: (context) => LoginCubit(),
        child: const SignInScreen(),
      );
  static Widget get register => BlocProvider<RegisterCubit>(
        create: (context) => RegisterCubit(),
        child: const SignUpScreen(),
      );
}
