import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:roomart/application/auth/auth_controller.dart';
import 'package:roomart/application/core/cart_controller.dart';
import 'package:roomart/application/rajaongkir/rajaongkir_cubit.dart';
import 'package:roomart/application/transaction/transaction_controller.dart';
import 'package:roomart/domain/raja_ongkir/cost_request_model.dart';
import 'package:roomart/domain/raja_ongkir/delivery_cost/cost_data_model.dart';
import 'package:roomart/domain/raja_ongkir/delivery_cost/costs.dart';
import 'package:roomart/domain/user/user_data_model.dart';
import 'package:roomart/utils/constants.dart';
import 'package:roomart/utils/formater.dart';

import '../../injection.dart';

class DeliveryPage extends StatefulWidget {
  static final String TAG = '/delivery_page';
  @override
  _DeliveryPageState createState() => _DeliveryPageState();
}

class _DeliveryPageState extends State<DeliveryPage> {
  final RajaongkirCubit ongkir = getIt<RajaongkirCubit>();
  final transactionController = Get.put(TransactionController());
  final cartController = Get.put(CartController());
  final authController = Get.put(AuthController());
  CostRequestModel? requestModel;
  UserDataModel? user;
  Costs? selectedCost;
  @override
  void initState() {
    user = authController.getUserDataModel;
    selectedCost = transactionController.getSelectedCost;
    requestModel = CostRequestModel(
        destination: user!.terrId3,
        origin: Constants.cityOriginId,
        weight: cartController.calculateWeight(),
        destinationType: "city",
        originType: "city",
        courirList: Constants().courierList);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pilih Pengiriman"),
      ),
      body: BlocProvider(
        create: (context) => ongkir..getCost(requestModel),
        child: BlocConsumer<RajaongkirCubit, RajaongkirState>(
          listener: (context, state) {
            state.maybeMap(
              orElse: () {},
              getCostsList: (e) {
                var _filteredDelivery = e.costDataModel
                    .where((element) => element.costs!.length > 0)
                    .toList();
                transactionController.setCostList(_filteredDelivery);
              },
            );
          },
          builder: (context, state) {
            return GetBuilder<TransactionController>(
              builder: (trans) {
                return state.maybeMap(
                  orElse: () => orElse(),
                  loading: (e) => loading(),
                  getCostsList: (e) {
                    var deliveryType = trans.getCostList;
                    return buildList(deliveryType);
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }

  Container buildList(List<CostDataModel> deliveryType) {
    return Container(
      child: ListView.builder(
        itemCount: deliveryType.length,
        itemBuilder: (context, index) {
          return Container(
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        deliveryType[index].name!,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Column(
                        children: deliveryType[index]
                            .costs!
                            .map((e) => Card(
                                  child: RadioListTile<Costs>(
                                    contentPadding:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    value: e,
                                    groupValue: selectedCost,
                                    activeColor: Colors.orange,
                                    onChanged: (val) {
                                      transactionController.setDeliveryCost(
                                          val, deliveryType[index]);
                                      setState(() {
                                        selectedCost = val;
                                      });

                                      Get.back();
                                      Get.showSnackbar(GetBar(
                                        message: "Pengiriman dipilih",
                                        duration: Duration(seconds: 3),
                                        snackPosition: SnackPosition.TOP,
                                      ));
                                    },
                                    subtitle: Text(
                                      e.service! +
                                          " " +
                                          e.cost!.first.etd! +
                                          " Hari",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    secondary: Text(
                                      Formatter().formatStringCurrency(
                                          e.cost!.first.value.toString()),
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    title: Text(
                                      e.description.toString(),
                                      style: TextStyle(fontSize: 17),
                                    ),
                                  ),
                                ))
                            .toList())
                  ],
                ),
                SizedBox(height: 30)
              ],
            ),
          );
        },
      ),
    );
  }

  Container orElse() {
    return Container(
      child: Center(
        child: Column(
          children: [
            Text("Reload",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey))
          ],
        ),
      ),
    );
  }

  Container loading() {
    return Container(child: Center(child: CircularProgressIndicator()));
  }
}
