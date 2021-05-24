import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:roomart/domain/category/category_model.dart';
import 'package:roomart/infrastructure/core/pref.dart';

class CategoryController extends GetxController {
  List<CategoryModel> categoryList = <CategoryModel>[].obs;
  List<CategoryModel> subCategoryList = <CategoryModel>[].obs;
  List<CategoryModel> subCategoryHistory = <CategoryModel>[].obs;

  void addHistory(CategoryModel ctgry) {
    this.subCategoryHistory.add(ctgry);
  }

  List<CategoryModel> get getHistoryCategory => this.subCategoryHistory;

  void popHistory() {
    subCategoryHistory.removeLast();
  }

  void setCategoryList(List<CategoryModel> category) {
    this.categoryList.addAll(category);
  }

  List<CategoryModel> get getCategoryList => this.categoryList;

  List<CategoryModel> calculateCategoryList(String categoryId) {
    List<CategoryModel> categoryFull = Pref().getCategoryFromLocal();

    categoryFull
        .removeWhere((data) => data.count == "0" && data.hasChild == "false");

    categoryFull.removeWhere((data) =>
        (data.countTotal == null ||
            data.countTotal == "0" ||
            data.countTotal == "") &&
        data.hasChild == "true");

    var _filtered =
        categoryFull.where((f) => f.parentId == categoryId).toList();

    final subCategoryList =
        _filtered.where((element) => element.count != "0").toList();

    return subCategoryList;
  }
}
