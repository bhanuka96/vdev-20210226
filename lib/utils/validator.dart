
import 'package:test_saksglobal/utils/env.dart';

class Validation{
  bool validatePassword(String value) {
    if (value.isEmpty) return false;
    String pattern = r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{7,}$';
    RegExp regExp = RegExp(pattern);
    if (!regExp.hasMatch(value)) return false;
    return true;
  }

  bool validateEmail(String value) {
    if (value.isEmpty) return false;
    bool emailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value);
    if (!emailValid) return false;
    return true;
  }

  bool isMatchAccounts(String email, String password) {
    if (email == null || password == null) return false;
    if (Env.adminAccount.containsKey(email.trim())) return Env.adminAccount.containsValue(password.trim());
    return false;
  }
}
