import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:test_saksglobal/constants/palette.dart';
import 'package:test_saksglobal/utils/errorLogger.dart';
import 'package:test_saksglobal/utils/httpOverrides.dart';

import 'controllers/auth/authController.dart';
import 'routes/appScreens.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  HttpOverrides.global = OBHttpOverrides();
  Get.put<AuthController>(AuthController());
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then((_) {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      enableLog: kDebugMode,
      logWriterCallback: ErrorLogger.add,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: Palette.lightTheme,
      // darkTheme: Palette.darkTheme,
      themeMode: ThemeMode.system,
    );
  }
}
