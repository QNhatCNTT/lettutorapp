import 'package:flutter/material.dart';
import 'package:lettutorapp/Validate/validate.dart';

class LoginValidation with ChangeNotifier {
  var _email = ValidationItem('', null);
  var _password = ValidationItem('', null);

  ValidationItem get email => _email;
  ValidationItem get password => _password;

  bool get isValid {
    if (_email.value != null && _password.value != null) {
      return true;
    } else {
      return false;
    }
  }

  void changeEmail(String value) {
    if (value.length >= 5) {
      _email = ValidationItem(value, null);
      if (value.contains('@')) {
        _email = ValidationItem(value, null);
      } else {
        _email = ValidationItem(null, 'Must contain @ character');
      }
    } else {
      _email = ValidationItem(null, 'Must be at least 5 characters');
    }
    notifyListeners();
  }

  void changePassword(String value) {
    if (value.length >= 5) {
      _password = ValidationItem(value, null);
    } else {
      _password = ValidationItem(null, 'Must be at least 5 charaters');
    }
    notifyListeners();
  }

  void loginData() {
    // ignore: avoid_print
    print('email: ${email.value} - password: ${password.value}');
  }
}
