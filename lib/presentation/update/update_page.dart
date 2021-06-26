import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:roomart/application/auth/auth_controller.dart';
import 'package:roomart/application/home/home_cubit.dart';
import 'package:roomart/domain/user/user_data_model.dart';
import 'package:roomart/presentation/core/widget_collection.dart';
import 'package:roomart/presentation/update/update_detail_page.dart';

import '../../injection.dart';

class UpdatePage extends StatefulWidget {
  static final String TAG = '/update_page';
  const UpdatePage({Key? key}) : super(key: key);

  @override
  _UpdatePageState createState() => _UpdatePageState();
}

class _UpdatePageState extends State<UpdatePage> {
  RefreshController _refreshController =
      RefreshController(initialRefresh: false);
  void _onRefresh() {
    homeCubit.getNewsListData(customerId: auth.getUserDataModel!.userId);
  }

  void _onLoading() {}
  final auth = Get.put(AuthController());
  final HomeCubit homeCubit = getIt<HomeCubit>();
  @override
  Widget build(BuildContext context) {
    if (auth.getUserDataModel == UserDataModel()) {
      return Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.login, size: 90),
            SizedBox(
              height: 20,
            ),
            Text("Please Login",
                style: TextStyle(fontSize: 40, color: Colors.grey))
          ],
        ),
      );
    } else
      return Container(
        child: BlocProvider(
          create: (context) => homeCubit
            ..getNewsListData(customerId: auth.getUserDataModel!.userId),
          child: BlocConsumer<HomeCubit, HomeState>(
            listener: (context, state) {
              state.maybeMap(
                orElse: () {
                  _refreshController.refreshCompleted();
                },
                loading: (e) {},
              );
            },
            builder: (context, state) {
              return state.maybeMap(orElse: () {
                return Container();
              }, error: (e) {
                return Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.refresh,
                        size: 80,
                        color: Colors.grey,
                      ),
                      SizedBox(height: 20),
                      TextButton(
                          onPressed: () {
                            homeCubit.getNewsListData(
                                customerId: auth.getUserDataModel!.userId);
                          },
                          child: Text("Refresh"))
                    ],
                  ),
                );
              }, onGetNewsList: (e) {
                return SmartRefresher(
                    enablePullDown: true,
                    enablePullUp: false,
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
                        return Container(
                          height: 55.0,
                          child: Center(child: body),
                        );
                      },
                    ),
                    controller: _refreshController,
                    onRefresh: _onRefresh,
                    onLoading: _onLoading,
                    child: ListView.builder(
                        itemCount: e.data.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              Get.toNamed(UpdateDetailPage.TAG,
                                  arguments: e.data[index]);
                            },
                            child: Container(
                              child: Card(
                                margin: EdgeInsets.all(8),
                                elevation: 5,
                                child: Column(
                                  children: [
                                    Container(
                                      height: 200,
                                      child: CustomImageProvider(
                                        url: e.data[index].imageURL,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Text(
                                            e.data[index].title!,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(height: 10),
                                          Text(
                                            e.data[index].content!,
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 4,
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        }));
              });
            },
          ),
        ),
      );
  }
}
