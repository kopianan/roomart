import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:roomart/application/auth/auth_controller.dart';
import 'package:roomart/application/auth/auth_cubit.dart';
import 'package:roomart/domain/models/discount/discount_data_model.dart';
import 'package:roomart/domain/user/user_data_model.dart';
import 'package:roomart/presentation/widgets/button_collection.dart';

import '../../injection.dart';

class DiscountPage extends StatefulWidget {
  static final String TAG = '/discount_page';
  @override
  _DiscountPageState createState() => _DiscountPageState();
}

class _DiscountPageState extends State<DiscountPage> {
  final authController = Get.put(AuthController());
  UserDataModel user;
  @override
  void initState() {
    user = authController.getUserDataModel;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(15),
            child: Column(children: [
              TextFormField(
                decoration: InputDecoration(hintText: "Coupon code"),
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                child: DefaultButton1(
                  color: Colors.purple[300],
                  text: "Find coupon",
                  onPressed: () {},
                ),
              ),
              BlocProvider(
                create: (context) => getIt<AuthCubit>()..getAvailableDiscount(),
                child: BlocConsumer<AuthCubit, AuthState>(
                  listener: (context, state) {
                    state.maybeMap(
                        orElse: () {},
                        error: (e) {
                          print(e);
                        },
                        onGetAvailableDiscount: (e) {
                          authController.setDiscount(e.list);
                        });
                  },
                  builder: (context, state) {
                    return DiscountList();
                  },
                ),
              )
            ]),
          ),
        ));
  }
}

class DiscountList extends StatelessWidget {
  const DiscountList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
      builder: (auth) => ListView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: auth
            .getDiscountList(auth.getUserDataModel.typeIds)
            .map((e) => ListTile(
                  title: Text(e.eventDiscount),
                ))
            .toList(),
      ),
    );
  }
}
