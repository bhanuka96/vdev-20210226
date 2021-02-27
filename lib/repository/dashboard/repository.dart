import 'package:test_saksglobal/apiProvider/apiProvider.dart';
import 'package:test_saksglobal/models/categoryModel.dart';

abstract class IDashRepository {
  Future<CategoryModel> getCategories();
}

class DashRepository implements IDashRepository {
  DashRepository({this.provider});

  final IDashProvider provider;

  @override
  Future<CategoryModel> getCategories() async {
  }
}
