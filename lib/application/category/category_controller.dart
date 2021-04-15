import 'package:get/get.dart';
import 'package:roomart/domain/category/category_model.dart';

class CategoryController extends GetxController {
  List<CategoryModel> categoryList = <CategoryModel>[].obs;

  void setCategoryList(List<CategoryModel> category) {
    this.categoryList.addAll(category);
  }

  List<CategoryModel> get getCategoryList => this.categoryList;
}
