import 'package:flutter/material.dart';
import 'validation_model.dart';

class SignupValidation with ChangeNotifier {
  ValidationItem _firstName = ValidationItem(null, null);
  ValidationItem _lastName = ValidationItem(null, null);
  ValidationItem _email = ValidationItem(null, null);
  ValidationItem _dob = ValidationItem(null, null);
  ValidationItem _password = ValidationItem(null, null);
  ValidationItem _confirmpassword = ValidationItem(null, null);

  //Getters
  ValidationItem get firstName => _firstName;
  ValidationItem get lastName => _lastName;
  ValidationItem get email => _email;
  ValidationItem get dob => _dob;
  ValidationItem get password => _password;
  ValidationItem get confirmpassword => _confirmpassword;
  bool get isValid {
    if (_lastName.value != null &&
        _firstName.value != null &&
        dob.value != null &&
        email.value != null &&
        password.value != null) {
      return true;
    } else {
      return false;
    }
  }

  //Setters
  void changeFirstName(String value) {
    if (value.length >= 3) {
      _firstName = ValidationItem(value, null);
    } else {
      _firstName = ValidationItem(null, "Must be at least 3 characters");
    }
    notifyListeners();
  }

  void changeLastName(String value) {
    if (value.length >= 3) {
      _lastName = ValidationItem(value, null);
    } else {
      _lastName = ValidationItem(null, "Must be at least 3 characters");
    }
    notifyListeners();
  }

  void changeEmail(String value) {
    if (value.contains("@")) {
      _email = ValidationItem(value, null);
    } else {
      _email = ValidationItem(null, "Enter valid Email address");
    }
    notifyListeners();
  }

  void changePasword(String value) {
    if (value.length >= 6) {
      _password = ValidationItem(value, null);
    } else {
      _password = ValidationItem(null, "Must be atleast 5 characters");
    }
  }
void confirmPasword(String value) {
    if (_password.value == _confirmpassword.value) {
      _password = ValidationItem(value, null);
    } else {
      _password = ValidationItem(null, "Ok");
    }
  }

  void changeDOB(String value) {
    try {
      DateTime.parse(value);
      _dob = ValidationItem(value, null);
    } catch (error) {
      _dob = ValidationItem(null, "Invalid Format");
    }
    notifyListeners();
  }

  void submitData() {
    print(
        "FirstName: ${firstName.value}, LastName: ${lastName.value}, ${DateTime.parse(dob.value)}");
  }
}
