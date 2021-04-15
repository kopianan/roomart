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
                        options: CarouselOptions(aspectRatio: 2),
                        items: r.first.imageLIst
                            .map((data) => Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(data)))))
                            .toList(),
                      ),
                    );
                  },
                );
              })),
        ),
        SliverToBoxAdapter(
          child: Container(
            child: Row(
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
          ),
        ),
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildSubtitle("Promosi"),
            ],
          ),
        ),
        SliverToBoxAdapter(
            child: BlocProvider(
          create: (context) => itemBloc..getItemListLazy(limit, offset),
          child: BlocConsumer<ItemCubit, ItemState>(
            listener: (context, state) {
              state.map(
                  initial: (e) {},
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
                        child: GridView.count(
                          physics: NeverScrollableScrollPhysics(),
                          crossAxisCount: 2,
                          childAspectRatio: 1 / 1.5,
                          crossAxisSpacing: 10,
                          shrinkWrap: true,
                          children: item.getListData
                              .map((val) => buildItemData(context, val))
                              .toList(),
                        ),
                      ));
            },
          ),
        ))
      ]),
    ));
  }

  Container buildItemData(BuildContext context, DataItemModel item) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image:
                        NetworkImage("${Constants().imageBaseUrl}${item.pic}"),
                    fit: BoxFit.cover,
                    onError: (exception, stackTrace) =>
                        AssetImage('assets/broken_image.png'),
                  )),
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  height: 50,
                  child: Text(
                    item.itemName,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 14.0, color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 2.0,
                ),
                (item.qty == "null" || item.qty == "")
                    ? Text(
                        "Quantity :0",
                        style: TextStyle(fontSize: 13),
                      )
                    : Text(
                        "Quantity : ${double.parse(item.qty).toStringAsFixed(0)}",
                        style: TextStyle(fontSize: 13)),
                SizedBox(
                  height: 2.0,
                ),
                // (userData == null)
                //     ? _itemPrice()
                //     : (userData.typeIds == null)
                //         ? _itemPrice()
                //         : (userData.typeIds ==
                //                     Constants().customerTypeReseller ||
                //                 userData.typeIds ==
                //                     Constants().customerTypeReseller2)
                //             ? Text(
                //                 "Reseller : " +
                //                     "Rp. ${Fun().formatStringCurrency(item.newPrice)}",
                //                 style: TextStyle(color: Colors.green))
                //             : _itemPrice(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Text buildSubtitle(String title) {
    return Text(
      title,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
    );
  }
}
