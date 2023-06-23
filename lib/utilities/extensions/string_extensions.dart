import '../constants/texts.dart';

extension StringExtension on String? {
  String? get valueIsEmpty {
    if (this == null || this!.isEmpty || this == '') {
      return Texts.fillBlank;
    }
    return null;
  }

  String? confirmPassword(String password) {
    if (this != password) {
      return Texts.nonMatchingPass;
    }
    return null;
  }

  String? get emailIsWrong {
    if (!this!.contains('@')) {
      return Texts.nonValidEmail;
    }
    return null;
  }

  String? get fullNameCheck {
    if (this!.split(' ').length < 2) {
      return Texts.nonValidName;
    }
    return null;
  }
}
