import 'package:test_saksglobal/models/categoryModel.dart';

abstract class IHomeRepository {
  Future<CategoryModel> getCategory();
}
