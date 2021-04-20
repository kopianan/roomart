import 'package:get_storage/get_storage.dart';
import '../../domain/category/category_model.dart';

class Pref {
  final box = GetStorage();

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
