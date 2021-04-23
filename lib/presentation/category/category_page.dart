import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:roomart/application/category/category_controller.dart';
import 'package:roomart/application/category/category_cubit.dart';
import 'package:roomart/presentation/category/sub_cotegory_page.dart';

import '../../domain/category/category_model.dart';
import '../../injection.dart';
import 'widgets/category_list_item.dart';

class CategoryPage extends StatefulWidget {
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  final categoryController = Get.put(CategoryController());
  bool isFirstTime = true;
  RefreshController _refreshController =
      RefreshController(initialRefresh: false);
  void _onRefresh() {
    categoryBloc.getAllCategory();
  }

  void _onLoading() async {
    await Future.delayed(Duration(milliseconds: 1000));

    _refreshController.loadComplete();
  }

  @override
  void initState() {
    if (isFirstTime && categoryController.getCategoryList.isEmpty) {
      isFirstTime = true;
      categoryBloc.getAllCategory();
    } else {
      isFirstTime = false;
    }
    super.initState();
  }

  final categoryBloc = getIt<CategoryCubit>();
  @override
  Widget build(BuildContext context) {
    return SmartRefresher(
        enablePullDown: true,
        enablePullUp: false,
        header: WaterDropHeader(),
        footer: CustomFooter(
          builder: (BuildContext context, LoadStatus mode) {
            Widget body;
            if (mode == LoadStatus.idle) {
              body = Text("pull up load");
            } else if (mode == LoadStatus.loading) {
              body = CupertinoActivityIndicator();
            } else if (mode == LoadStatus.failed) {
              body = Text("Load Failed!Click retry!");
            } else if (mode == LoadStatus.canLoading) {
              body = Text("release to load more");
            } else {
              body = Text("No more Data");
            }
            return Container(
              height: 55.0,
              child: Center(child: body),
            );
          },
        ),
        controller: _refreshController,
        onRefresh: _onRefresh,
        onLoading: _onLoading,
        child: CustomScrollView(
          slivers: [
            BlocProvider(
                create: (context) => categoryBloc,
                child: BlocConsumer<CategoryCubit, CategoryState>(
                    listener: (context, state) {
                  state.maybeMap(
                    orElse: () {},
                    error: (e) {
                      print(e);
                    },
                    onGetAllCategory: (e) {
                      setState(() {
                        isFirstTime = false;
                      });

                      _refreshController.refreshCompleted();
                      categoryController.setCategoryList(e.data);
                    },
                  );
                }, builder: (context, state) {
                  return (isFirstTime)
                      ? SliverToBoxAdapter(
                          child: Container(
                            height: 40,
                            child: Center(
                              child: CircularProgressIndicator(),
                            ),
                          ),
                        )
                      : SliverList(
                          delegate: SliverChildListDelegate(
                              categoryController.getCategoryList
                                  .map(
                                    (ctgry) => CategoryListItem(
                                      categoryModel: ctgry,
                                      onTap: () {
                                        // print(ctgry.toJson());
                                        Get.toNamed(SubCategoryPage.TAG,
                                            arguments: ctgry);
                                      },
                                    ),
                                  )
                                  .toList()));
                }))
          ],
        ));
  }
}
