import 'package:get/get.dart';
import 'package:test_saksglobal/constants/strings.dart';
import 'package:test_saksglobal/domainAdapters/dashboard/adapter.dart';
import 'package:test_saksglobal/models/categoryModel.dart';

class DashController extends SuperController<CategoryModel> {
  DashController({this.dashRepository});

  final IDashRepository dashRepository;

  @override
  void onInit() {
    super.onInit();
    dashRepository.getCategories().then((data) {
      change(data, status: RxStatus.success());
    }, onError: (err) {
      print('Error : $err');
      change(null, status: RxStatus.error(Strings.error));
    });
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
