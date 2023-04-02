import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:roomart/application/category/category_controller.dart';
import 'package:roomart/application/category/category_cubit.dart';
import 'package:roomart/application/core/cart_controller.dart';
import 'package:roomart/application/home/home_controller.dart';
import 'package:roomart/application/item/item_controller.dart';
import 'package:roomart/application/item/item_cubit.dart';
import 'package:roomart/domain/item/data_item_model.dart';
import 'package:roomart/presentation/category/sub_cotegory_page.dart';
import 'package:roomart/presentation/widgets/item_list_widget.dart';
import 'package:roomart/utils/category_data.dart';

import '../../../injection.dart';

class SearchProductPage extends StatefulWidget {
  static final String TAG = "/search_product_page";
  @override
  _SearchProductPageState createState() => _SearchProductPageState();
}

class _SearchProductPageState extends State<SearchProductPage> {
  RefreshController _refreshController =
      RefreshController(initialRefresh: false);
  void _onRefresh() async {
    _refreshController.refreshCompleted();
  }

  void _onLoading() {
    itemBloc.searchItemLazy(limit, offset, searchController.text);
  }

  final ItemCubit itemBloc = getIt<ItemCubit>();
  final searchController = TextEditingController();
  int limit = 10;
  final itemConroller = Get.put(ItemController());
  final cartController = Get.put(CartController());

  List<DataItemModel> _items = [];
  int offset = 0;
  @override
  void initState() {
    offset = 0;
    itemBloc.searchItemLazy(limit, offset, searchController.text);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Cari Procuk"),
        ),
        body: BlocProvider(
            create: (context) => itemBloc,
            child: SmartRefresher(
              enablePullDown: true,
              enablePullUp: true,
              header: WaterDropHeader(),
              footer: CustomFooter(
                builder: (BuildContext context, LoadStatus? mode) {
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
                  return BlocBuilder<ItemCubit, ItemState>(
                    builder: (context, state) {
                      return state.maybeMap(onGetSearchItem: (e) {
                        if (e.data.length == 0) {
                          return Container(
                            height: 55.0,
                            child: Center(child: Text("No More Data")),
                          );
                        } else {
                          return Container(
                            height: 55.0,
                            child: Center(child: body),
                          );
                        }
                      }, orElse: () {
                        return Container(
                          height: 55.0,
                          child: Center(child: body),
                        );
                      });
                    },
                  );
                },
              ),
              controller: _refreshController,
              onRefresh: _onRefresh,
              onLoading: _onLoading,
              child: CustomScrollView(slivers: [
                SliverToBoxAdapter(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    width: double.infinity,
                    child: TextFormField(
                      onChanged: (e) {},
                      onFieldSubmitted: (val) {
                        offset = 0;
                        _items.clear();
                        itemBloc.searchItemLazy(
                            limit, offset, searchController.text);
                      },
                      decoration: InputDecoration(
                        prefixIcon: (searchController.text.isEmpty)
                            ? null
                            : IconButton(
                                icon: Icon(Icons.clear),
                                onPressed: () {
                                  searchController.clear();
                                  setState(() {});
                                }),
                        hintText: "Cari Produk",
                        suffixIcon: IconButton(
                          icon: Icon(Icons.search),
                          onPressed: () {
                            _items.clear();
                            offset = 0;
                            itemBloc.searchItemLazy(
                                limit, offset, searchController.text);
                          },
                        ),
                      ),
                      controller: searchController,
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: BlocConsumer<ItemCubit, ItemState>(
                    listener: (context, state) {
                      state.maybeMap(
                        orElse: () {},
                        loading: (e) {},
                        error: (e) {},
                        onGetSearchItem: (e) {
                          _items.addAll(e.data);
                          if (_items.length == 0) {
                            offset = 0;
                          } else {
                            offset += e.data.length;
                          }
                        },
                      );

                      _refreshController.loadComplete();
                    },
                    builder: (context, state) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            child: GridView.count(
                              physics: NeverScrollableScrollPhysics(),
                              crossAxisCount: 2,
                              childAspectRatio: 1 / 1.8,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 15,
                              shrinkWrap: true,
                              children: _items
                                  .map((val) => ItemListWidget(item: val))
                                  .toList(),
                            ),
                          ),
                        ],
                      );
                      // return state.maybeMap(orElse: () {
                      //   return Container();
                      // }, loading: (e) {
                      //   return Center(child: CircularProgressIndicator());
                      // }, onGetSearchItem: (e) {
                      //   if (e.data.length == 0) {
                      //     return Container(
                      //       child: Center(
                      //         child: Text(
                      //           "No Item Found",
                      //           style: TextStyle(
                      //               fontSize: 30,
                      //               fontWeight: FontWeight.bold,
                      //               color: Colors.grey),
                      //         ),
                      //       ),
                      //     );
                      //   }
                      //   return Column(
                      //     crossAxisAlignment: CrossAxisAlignment.start,
                      //     children: [
                      //       SizedBox(
                      //         height: 20,
                      //       ),
                      //       Container(
                      //         margin: EdgeInsets.symmetric(horizontal: 10),
                      //         child: GridView.count(
                      //           physics: NeverScrollableScrollPhysics(),
                      //           crossAxisCount: 2,
                      //           childAspectRatio: 1 / 1.8,
                      //           crossAxisSpacing: 10,
                      //           mainAxisSpacing: 15,
                      //           shrinkWrap: true,
                      //           children: e.data
                      //               .map((val) => ItemListWidget(item: val))
                      //               .toList(),
                      //         ),
                      //       ),
                      //     ],
                      //   );
                      // });
                    },
                  ),
                )
              ]),
            )));
  }

  GridView buildinitialCategory() {
    return GridView(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, crossAxisSpacing: 8, mainAxisExtent: 55),
        children: initalCategory
            .map((ctgry) => InkWell(
                onTap: () {
                  Get.toNamed(SubCategoryPage.TAG, arguments: ctgry);
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 8),
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xFFFDF3E8),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey[300]!,
                            blurRadius: 1,
                            spreadRadius: 1,
                            offset: Offset(1, 1))
                      ]),
                  child: Text(ctgry.description!,
                      maxLines: 1,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                      )),
                )))
            .toList());
  }

  Text buildSubtitle(String title) {
    return Text(
      title,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
    );
  }
}
