import 'package:get/get.dart';
import 'package:test_saksglobal/models/categoryModel.dart';

class DashController extends SuperController<CategoryModel> {
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onDetached() {
    print('onDetached called');
  }

  @override
  void onInactive() {
    print('onInActive called');
  }

  @override
  void onPaused() {
    print('onPaused called');
  }

  @override
  void onResumed() {
    print('onResumed called');
  }

}