import 'package:get/get.dart';
import 'package:test_saksglobal/screens/dashboard/dashboardScreen.dart';
import 'package:test_saksglobal/screens/login/loginScreen.dart';
import 'package:test_saksglobal/screens/splash/splashScreen.dart';

part 'appRoute.dart';

class AppPages {
  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(name: Routes.SPLASH, page: () => SplashScreen()),
    GetPage(name: Routes.DASHBOARD, page: () => DashboardScreen()),
    GetPage(name: Routes.LOGIN, page: () => LoginScreen()),
  ];
}
