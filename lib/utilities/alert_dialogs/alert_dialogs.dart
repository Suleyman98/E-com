import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../presentation/pages/widgets/custom_elevated_button.dart';

class AlertDialogs {
  AlertDialogs._();

  static void showSuccess(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          title: const Text('Success'),
          content: const Text('Welcome to our community!'),
          actions: [
            CustomElevatedButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    '/home',
                    (route) => true,
                  );
                },
                label: 'Ok',
                size: Size(100.w, 50.h))
          ],
        );
      },
    );
  }

  static void showError(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          alignment: Alignment.center,
          title: const Text('Something Went Wront'),
          content: const Text('Please enter correct email or password'),
          actions: [
            Align(
              alignment: Alignment.center,
              child: CustomElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  label: 'Ok',
                  size: Size(100.w, 50.h)),
            )
          ],
        );
      },
    );
  }
}
