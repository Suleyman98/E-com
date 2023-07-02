import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../app/app_themes.dart';
import '../utilities/helpers/pager.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: AppTheme.lightTheme,
          initialRoute: '/home',
          routes: {
            '/home': (context) => Pager.home,
            '/register': (context) => Pager.register,
            '/login': (context) => Pager.login
          },
        );
      },
    );
  }
}
