import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_saksglobal/utils/errorLogger.dart';

import 'routes/appScreens.dart';

void main() {
  runApp(MyApp());
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
    );
  }
}