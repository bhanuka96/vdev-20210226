import 'package:test_saksglobal/models/categoryModel.dart';

abstract class IDashRepository {
  Future<CategoryModel> getCategories();
}
