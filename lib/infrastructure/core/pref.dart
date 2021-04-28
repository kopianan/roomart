import 'package:get_storage/get_storage.dart';
import 'package:roomart/domain/user/user_data_model.dart';
import '../../domain/category/category_model.dart';

class Pref {
  final box = GetStorage();

  Future<void> saveUserDataToLocal(dynamic userData) async {
    try {
      await box.write('user_data', userData);
    } catch (e) {
      throw (e);
    }
  }

  UserDataModel getUserDataModelFromLocal() {
    try {
      final _data = box.read<dynamic>('user_data');
      final _result = UserDataModel.fromJson(_data);
      return _result;
    } catch (e) {
      throw (e);
    }
  }

  Future<void> saveCategoryToLocal(dynamic listCategory) async {
    try {
      await box.write('categories', listCategory);
    } catch (e) {
      throw (e);
    }
  }

  List<CategoryModel> getCategoryFromLocal() {
    try {
      List _data = box.read<List<dynamic>>('categories');
      final _result = _data.map((e) => CategoryModel.fromJson(e)).toList();
      return _result;
    } catch (e) {
      throw (e);
    }
  }
}
