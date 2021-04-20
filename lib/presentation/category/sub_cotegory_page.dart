import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:roomart/presentation/category/widgets/category_list_item.dart';

import '../../application/category/category_controller.dart';
import '../../application/category/category_cubit.dart';
import '../../domain/category/category_model.dart';
import '../../domain/category/category_model.dart';
import '../../injection.dart';

class SubCategoryPage extends StatefulWidget {
  static final String TAG = '/sub_category_page';
  @override
  _SubCategoryPageState createState() => _SubCategoryPageState();
}

class _SubCategoryPageState extends State<SubCategoryPage> {
  CategoryModel categoryModel;

  @override
  void initState() {
    categoryModel = Get.arguments as CategoryModel;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: GetBuilder<CategoryController>(
          builder: (ctgryList) {
            return ListView.builder(
                itemCount: ctgryList
                    .calculateCategoryList(categoryModel.kategoriId)
                    .length,
                itemBuilder: (context, index) {
                  return CategoryListItem(
                    categoryModel: ctgryList
                        .calculateCategoryList(categoryModel.kategoriId)[index],
                    onTap: () {},
                  );
                });
          },
        ));
  }
}
