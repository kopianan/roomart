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
