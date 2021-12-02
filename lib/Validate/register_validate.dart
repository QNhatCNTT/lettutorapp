// ignore_for_file: unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:lettutorapp/Validate/validate.dart';

class RegisterValidate with ChangeNotifier {
  var _userName = ValidationItem(null, null);
  var _email = ValidationItem(null, null);
  var _password = ValidationItem(null, null);
  var _confirmPassword = ValidationItem(null, null);

  ValidationItem get userName => _userName;
  ValidationItem get email => _email;
  ValidationItem get password => _password;
  ValidationItem get confirmPassword => _confirmPassword;

  bool get isValid {
    if (_userName.value != null &&
        _email.value != null &&
        _password.value != null &&
        _confirmPassword.value != null) {
      return true;
    } else {
      return false;
    }
  }

  void changeUserName(String value) {
    value.length >= 6
        ? _userName = ValidationItem(value, null)
        : _userName = ValidationItem(null, 'Must be at least 6 characters');
    notifyListeners();
  }

  void changeEmail(String value) {
    value.length >= 5
        ? (value.contains('@')
            ? _email = ValidationItem(value, null)
            : _email = ValidationItem(null, 'Must contain @ character'))
        : _email = ValidationItem(null, 'Must be at least 5 characters');
    notifyListeners();
  }

  void changePassword(String value) {
    value.length >= 5
        ? _password = ValidationItem(value, null)
        : _password = ValidationItem(null, 'Must be at least 5 characters');
    notifyListeners();
  }

  void changeConfirmPassword(String value) {
    value == _password.value
        ? _confirmPassword = ValidationItem(value, null)
        : _confirmPassword =
            ValidationItem(null, 'The password is not the same');
    notifyListeners();
  }
}
