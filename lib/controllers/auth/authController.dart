import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:test_saksglobal/bindings/dashboard/binding.dart';
import 'package:test_saksglobal/components/loadingDialog.dart';
import 'package:test_saksglobal/constants/palette.dart';
import 'package:test_saksglobal/constants/strings.dart';
import 'package:test_saksglobal/models/userModel.dart';
import 'package:test_saksglobal/screens/dashboard/dashboardScreen.dart';
import 'package:test_saksglobal/screens/login/loginScreen.dart';
import 'package:test_saksglobal/utils/validator.dart';

class AuthController extends GetxController with Validation {
  static AuthController to = Get.find();
  final box = GetStorage();

  Rx<UserModel> authUser = Rx<UserModel>();
  RxString userName = ''.obs;
  RxString password = ''.obs;
  RxString usernameError = RxString('');
  RxString passwordError = RxString('');

  @override
  void onReady() async {
    super.onReady();
    ever(authUser, handleAuthChanged);
    authUser.value = await getUser;
    debounce(userName, userNameValidation, time: Duration(milliseconds: 100));
    debounce(password, passwordValidation, time: Duration(milliseconds: 100));
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future<UserModel> get getUser async => UserModel.fromJson(await box.read('auth'));

  Future<void> setUser() async => await box.write('auth', UserModel.getUser(userName.value).toJson());

  bool get isFormValidate => usernameError.value == null && passwordError.value == null && userName.value.isNotEmpty && password.value.isNotEmpty;

  void handleAuthChanged(_authUser) async {
    if (_authUser == null) {
      Get.offAll(() => LoginScreen());
    } else {
      Get.offAll(() => DashboardScreen(), binding: DashBinding());
    }
  }

  void userNameValidation(String value) {
    if (value?.isEmpty ?? true) return;
    if (validateEmail(value)) {
      usernameError.value = null;
    } else {
      usernameError.value = Strings.invalidEmail;
    }
  }

  void passwordValidation(String value) {
    if (value?.isEmpty ?? true) return;
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
    if (isMatchAccounts(userName.value,password.value)) {
      Get.dialog(LoadingDialog(), barrierDismissible: false);
      await setUser();
      Get.snackbar(null, Strings.success, backgroundColor: Palette.white,colorText: Palette.black);
      await Future.delayed(Duration(seconds: 3));
      authUser.value = UserModel.getUser(userName.value);
      clearData();
    } else {
      Get.snackbar(null, Strings.invalidAll, backgroundColor: Palette.white,colorText: Palette.red);
    }
  }

  Future<void> signOut() async {
    await box.erase();
    authUser.value = null;
    return null;
  }

  void clearData() {
    userName.value = '';
    usernameError.value = '';
    password.value = '';
    passwordError.value = '';
  }
}
