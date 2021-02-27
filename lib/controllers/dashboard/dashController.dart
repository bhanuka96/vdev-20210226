import 'package:get/get.dart';
import 'package:test_saksglobal/domainAdapters/dashboard/adapter.dart';
import 'package:test_saksglobal/models/categoryModel.dart';

class DashController extends SuperController<CategoryModel> {
  DashController({this.dashRepository});

  final IHomeRepository dashRepository;

  @override
  void onInit() {
    super.onInit();
    dashRepository.getCategory().then((data) {
      change(data, status: RxStatus.success());
    }, onError: (err) {
      change(null, status: RxStatus.error(err.toString()));
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