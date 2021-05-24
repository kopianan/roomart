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
          if (_ctgry.getHistoryCategory.length > 0) {
            if (_ctgry.getHistoryCategory.length == 1) {
              _ctgry.popHistory();

              return true;
            } else {
              var _index = _ctgry.getHistoryCategory.length - 1;
              var _last = _ctgry.getHistoryCategory[_index];
              categoryCubit.getCategoryByParent(
                  _last.copyWith(kategoriId: _last.parentId));
              _ctgry.popHistory();
              return false;
            }
          } else {
            return true;
          }
        },
        child: Scaffold(
            appBar: AppBar(
              title: Container(
                  height: kToolbarHeight,
                  child: GetX<CategoryController>(
                    builder: (_ctgry) => ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: _ctgry.getHistoryCategory.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Row(
                            children: <Widget>[
                              InkWell(
                                  onTap: () {
                                    // if (index ==
                                    //     listData.historyCategoryModel.length - 1) {
                                    // } else {
                                    //   listData.clearHistoryCategoryModelRange(
                                    //       index + 1,
                                    //       listData.historyCategoryModel.length);
                                    //   listData.clearCategoryListRange(index + 1,
                                    //       listData.listOfLIstCategory.length);
                                    // }
                                  },
                                  child: Text(
                                    _ctgry
                                        .getHistoryCategory[index].description.toUpperCase(),
                                    style: TextStyle(fontSize: 17),
                                  )),
                              (index == _ctgry.getHistoryCategory.length-1)
                                  ? SizedBox()
                                  : Icon(Icons.arrow_right_alt_outlined)
                            ],
                          );
                        }),
                  )),
            ),
            body: BlocProvider(
              create: (context) =>
                  categoryCubit..getCategoryByParent(categoryModel),
              child: BlocConsumer<CategoryCubit, CategoryState>(
                listener: (context, state) {
                  state.maybeMap(
                      orElse: () {},
                      onCategoryEnd: (e) {
                        _ctgry.popHistory();
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
                            _ctgry.addHistory(listData[index]);
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
