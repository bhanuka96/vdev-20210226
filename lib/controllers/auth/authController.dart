import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:test_saksglobal/constants/palette.dart';
import 'package:test_saksglobal/constants/strings.dart';
import 'package:test_saksglobal/screens/dashboard/dashboardScreen.dart';
import 'package:test_saksglobal/screens/login/loginScreen.dart';
import 'package:test_saksglobal/utils/validator.dart';

class AuthController extends GetxController with Validation {
  static AuthController to = Get.find();
  final box = GetStorage();

  Rx<String> authUser = Rx<String>();
  RxString userName = ''.obs;
  RxString password = ''.obs;
  RxString usernameError = RxString('');
  RxString passwordError = RxString('');

  @override
  void onReady() async {
    super.onReady();
    ever(authUser, handleAuthChanged);
    // await signOut();
    authUser.value = await getUser;
    debounce(userName, userNameValidation, time: Duration(milliseconds: 100));
    debounce(password, passwordValidation, time: Duration(milliseconds: 100));
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future<String> get getUser async => await box.read('email');

  Future<void> setUser() async => await box.write('email', userName.value);

  bool get isFormValidate => usernameError.value == null && passwordError.value == null && userName.value.isNotEmpty && password.value.isNotEmpty;

  void handleAuthChanged(_authUser) async {
    if (_authUser == null) {
      Get.offAll(() => LoginScreen());
    } else {
      Get.offAll(() => DashboardScreen());
    }
  }

  void userNameValidation(String value) {
    if (validateEmail(value)) {
      usernameError.value = null;
    } else {
      usernameError.value = Strings.invalidEmail;
    }
  }

  void passwordValidation(String value) {
    if (validatePassword(value)) {
      passwordError.value = null;
    } else {
      passwordError.value = Strings.invalidPassword;
    }
  }

  void userChanged(String val) {
    userName.value = val;
  }

  void passwordChanged(String val) {
    password.value = val;
  }

  void submit() async {
    if (isFormValidate) {
      await setUser();
      Get.snackbar(null, Strings.success, backgroundColor: Palette.white);
      await Future.delayed(Duration(seconds: 3));
      authUser.value = userName.value;
      clearData();
    } else {
      Get.snackbar(null, Strings.invalidAll, backgroundColor: Palette.red);
    }
  }

  Future<void> signOut() async {
    await box.erase();
    authUser.value = null;
    return null;
  }

  void clearData() {
    userName.value = '';
    usernameError.value = null;
    password.value = '';
    passwordError.value = null;
  }
}
