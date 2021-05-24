import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:roomart/presentation/category/category_end_page.dart';
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

  List<CategoryModel> listData = <CategoryModel>[];

  final categoryCubit = getIt<CategoryCubit>();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CategoryController>(
      builder: (_ctgry) => WillPopScope(
        onWillPop: () async {
          _ctgry.popHistory();
          if (_ctgry.getHistoryCategory.length == 0) {
            return true;
          } else {
            return false;
          }
        },
        child: Scaffold(
            appBar: AppBar(),
            body: BlocProvider(
              create: (context) =>
                  categoryCubit..getCategoryByParent(categoryModel),
              child: BlocConsumer<CategoryCubit, CategoryState>(
                listener: (context, state) {
                  state.maybeMap(
                      orElse: () {},
                      onCategoryEnd: (e) {
                        Get.toNamed(CategoryEndPage.TAG, arguments: e.data);
                      },
                      onGetCategoryByParentId: (e) {
                        listData = e.data;
                      });
                },
                builder: (context, state) {
                  return ListView.builder(
                      itemCount: listData.length,
                      itemBuilder: (context, index) {
                        return CategoryListItem(
                          categoryModel: listData[index],
                          onTap: () {
                            categoryCubit.getCategoryByParent(listData[index]);
                          },
                        );
                      });
                },
              ),
            )),
      ),
    );
  }
}
