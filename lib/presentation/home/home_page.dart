import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:roomart/application/home/home_cubit.dart';
import 'package:roomart/application/item/item_controller.dart';
import 'package:roomart/application/item/item_cubit.dart';
import 'package:roomart/domain/item/data_item_model.dart';
import 'package:roomart/presentation/widgets/item_list_widget.dart';
import 'package:roomart/utils/constants.dart';

import '../../injection.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  RefreshController _refreshController =
      RefreshController(initialRefresh: false);
  void _onRefresh() async {
    _refreshController.refreshCompleted();
  }

  void _onLoading() {
    itemBloc..getItemListLazy(limit, offset);
  }

  final itemBloc = getIt<ItemCubit>();

  int limit = 10;
  int offset = 1;
  final itemConroller = Get.put(ItemController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SmartRefresher(
      enablePullDown: true,
      enablePullUp: true,
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
      child: CustomScrollView(slivers: [
        SliverToBoxAdapter(
          child: BlocProvider(
              create: (context) => getIt<HomeCubit>()..getHomeBanner(),
              child: BlocConsumer<HomeCubit, HomeState>(
                  listener: (context, state) {
                print(state);
              }, builder: (context, state) {
                return state.maybeMap(
                  orElse: () => Container(),
                  loading: (e) => Container(),
                  error: (e) => Container(),
                  onGetBanner: (e) {
                    return e.data.fold(
                      (l) => Container(),
                      (r) => CarouselSlider(
                        options: CarouselOptions(
                          aspectRatio: 2 / 0.8,
                          pageSnapping: false,
                          autoPlay: true,
                        ),
                        items: r.first.imageLIst
                            .map((data) => Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  child: Container(
                                      margin: EdgeInsets.only(right: 15),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          boxShadow: [
                                            BoxShadow(
                                                blurRadius: 2,
                                                spreadRadius: 2,
                                                color: Colors.grey[200],
                                                offset: Offset(2, 2))
                                          ],
                                          image: DecorationImage(
                                              image: NetworkImage(data),
                                              fit: BoxFit.cover))),
                                ))
                            .toList(),
                      ),
                    );
                  },
                );
              })),
        ),
        SliverToBoxAdapter(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    buildSubtitle("Kategory Belanja"),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        child: Text(
                          "Lihat Semua",
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20),
                GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 6,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 8,
                        mainAxisExtent: 55),
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(bottom: 8),
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0xFFFDF3E8),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey[300],
                                  blurRadius: 1,
                                  spreadRadius: 1,
                                  offset: Offset(1, 1))
                            ]),
                        child: Text("Nama Kategory agak panjang",
                            maxLines: 1,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                            )),
                      );
                    })
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildSubtitle("Promosi"),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
            child: BlocProvider(
          create: (context) => itemBloc..getItemListLazy(limit, offset),
          child: BlocConsumer<ItemCubit, ItemState>(
            listener: (context, state) {
              state.maybeMap(
                  orElse: () {},
                  loading: (e) {},
                  error: (e) {},
                  onGetItemLazy: (e) {
                    itemConroller.setListData(e.data);
                    offset++;
                  });

              _refreshController.loadComplete();
            },
            builder: (context, state) {
              return GetX<ItemController>(
                  builder: (item) => Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: GridView.count(
                          physics: NeverScrollableScrollPhysics(),
                          crossAxisCount: 2,
                          childAspectRatio: 1 / 1.5,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 15,
                          shrinkWrap: true,
                          children: item.getListData
                              .map((val) => ItemListWidget(item: val))
                              .toList(),
                        ),
                      ));
            },
          ),
        ))
      ]),
    ));
  }

  Text buildSubtitle(String title) {
    return Text(
      title,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
    );
  }
}
