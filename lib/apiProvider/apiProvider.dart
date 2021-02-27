import 'package:get/get.dart';
import 'package:test_saksglobal/models/categoryModel.dart';

abstract class IDashProvider {
  Future<Response<CategoryModel>> getCategories(String path);
}

class DashProvider extends GetConnect implements IDashProvider {
  @override
  void onInit() {
  }

  @override
  Future<Response<CategoryModel>> getCategories(String path) => get(path);
}
