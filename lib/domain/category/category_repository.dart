import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:roomart/domain/category/category_model.dart';
import 'package:roomart/utils/constants.dart';
import 'package:roomart/infrastructure/core/pref.dart';

abstract class ICategoryFacade {
  Future<Either<String, List<CategoryModel>>> getAllCategory();
  Future<Either<String, List<CategoryModel>>> getCategoryByParentId(
      String parentId);
}

@LazySingleton(as: ICategoryFacade)
class CategoryRepository extends ICategoryFacade {
  Dio dio = Dio();

  Options options =
      Options(headers: {"AccessKey": Constants().accessKeyUltimo});

  @override
  Future<Either<String, List<CategoryModel>>> getAllCategory() async {
    Response _response;

    try {
      _response = await dio.get(
          "${Constants().baseUrlProduction}api,KategoriData.vm?loccode=${Constants.locId}");
      List responseJson = json.decode(_response.data);
      Pref().saveCategoryToLocal(responseJson);
      final data =
          responseJson.map((md) => new CategoryModel.fromJson(md)).toList();
      List<CategoryModel> filteredData;
      filteredData =
          data.where((f) => f.parentId == "" && (f.count == "0")).toList();

      filteredData.removeWhere(
          (data) => (data.count == "0") && (data.hasChild == "false"));
      var newData = filteredData;
      newData.removeWhere(
          (data) => (data.countTotal == "0") && (data.hasChild == "true"));

      return right(filteredData);
    } on DioError catch (err) {
      return left(err.message);
    } catch (e) {
      return left(e.toString());
    }
  }

  @override
  Future<Either<String, List<CategoryModel>>> getCategoryByParentId(
      String parentId) async {
    List<CategoryModel> _category;
    List<CategoryModel> _filtered;

    try {
      _category = Pref().getCategoryFromLocal();

      _filtered = _category.where((f) => f.parentId == parentId).toList();
      if (_filtered.length == 0) {
        return right(<CategoryModel>[]);
      } else {
        // _filtered.removeWhere(
        //     (data) => (data.count == "0") && (data.hasChild == "false"));

        // _filtered.removeWhere(
        //     (data) => (data.countTotal == "0") && (data.hasChild == "true"));
        return right(_filtered);
      }
    } catch (e) {
      return left("Something wrong");
    }
  }
}
