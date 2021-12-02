import 'package:flutter/material.dart';
import 'package:lettutorapp/Validate/validate.dart';

class ResetValidate with ChangeNotifier {
  var _email = ValidationItem(null, null);

  ValidationItem get email => _email;

  bool get isValid {
    // ignore: unnecessary_null_comparison
    if (_email.value != null) {
      return true;
    } else {
      return false;
    }
  }

  void changeEmail(String value) {
    value.length >= 5
        ? (value.contains('@')
            ? _email = ValidationItem(value, null)
            : _email = ValidationItem(null, 'Must contain @ character'))
        : _email = ValidationItem(null, 'Must be at least 5 characters');
    notifyListeners();
  }
}
