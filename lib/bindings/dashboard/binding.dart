import 'package:get/get.dart';
import 'package:test_saksglobal/apiProvider/apiProvider.dart';
import 'package:test_saksglobal/controllers/dashboard/dashController.dart';
import 'package:test_saksglobal/domainAdapters/dashboard/adapter.dart';
import 'package:test_saksglobal/repository/dashboard/repository.dart';

class DashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IDashProvider>(() => DashProvider());
    Get.lazyPut<IDashRepository>(() => DashRepository(provider: Get.find()));
    Get.lazyPut(() => DashController(dashRepository: Get.find()));
  }
}