import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:roomart/application/auth/auth_controller.dart';
import 'package:roomart/application/home/home_cubit.dart';
import 'package:roomart/domain/user/user_data_model.dart';
import 'package:roomart/presentation/core/widget_collection.dart';
import 'package:roomart/presentation/update/update_detail_page.dart';

import '../../injection.dart';

class UpdatePage extends StatefulWidget {
  static final String TAG = '/update_page';
  const UpdatePage({Key key}) : super(key: key);

  @override
  _UpdatePageState createState() => _UpdatePageState();
}

class _UpdatePageState extends State<UpdatePage> {
  final auth = Get.put(AuthController());
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
          create: (context) => getIt<HomeCubit>()
            ..getNewsListData(customerId: auth.getUserDataModel.userId),
          child: BlocConsumer<HomeCubit, HomeState>(
            listener: (context, state) {},
            builder: (context, state) {
              return state.maybeMap(orElse: () {
                return Container();
              }, onGetNewsList: (e) {
                return ListView.builder(
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
                                        e.data[index].title,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        e.data[index].content,
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
                    });
              });
            },
          ),
        ),
      );
  }
}
