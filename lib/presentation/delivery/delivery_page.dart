import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:roomart/application/rajaongkir/rajaongkir_cubit.dart';
import 'package:roomart/application/transaction/transaction_controller.dart';
import 'package:roomart/domain/raja_ongkir/cost_request_model.dart';
import 'package:roomart/domain/raja_ongkir/delivery_cost/cost_data_model.dart';
import 'package:roomart/domain/raja_ongkir/delivery_cost/costs.dart';
import 'package:roomart/utils/constants.dart';
import 'package:roomart/utils/formater.dart';

import '../../injection.dart';

class DeliveryPage extends StatefulWidget {
  static final String TAG = '/delivery_page';
  @override
  _DeliveryPageState createState() => _DeliveryPageState();
}

class _DeliveryPageState extends State<DeliveryPage> {
  final ongkir = getIt<RajaongkirCubit>();
  final transactionController = Get.put(TransactionController());

  CostRequestModel requestModel;
  Costs selectedCost;
  @override
  void initState() {
    selectedCost = transactionController.getSelectedCost;
    requestModel = CostRequestModel(
        destination: "114",
        origin: "501",
        weight: 5000,
        destinationType: "city",
        originType: "city",
        courirList: Constants().courierList);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocProvider(
        create: (context) => ongkir..getCost(requestModel),
        child: BlocConsumer<RajaongkirCubit, RajaongkirState>(
          listener: (context, state) {
            state.maybeMap(
              orElse: () {},
              getCostsList: (e) {
                var _filteredDelivery = e.costDataModel
                    .where((element) => element.costs.length > 0)
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
                        deliveryType[index].name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Column(
                        children: deliveryType[index]
                            .costs
                            .map((e) => Card(
                                  child: RadioListTile<Costs>(
                                    contentPadding:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    value: e,
                                    groupValue: selectedCost,
                                    activeColor: Colors.orange,
                                    onChanged: (val) {
                                      transactionController
                                          .setDeliveryCost(val);
                                      setState(() {
                                        selectedCost = val;
                                      });
                                    },
                                    subtitle: Text(
                                      e.service +
                                          " " +
                                          e.cost.first.etd +
                                          " Hari",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    secondary: Text(
                                      Formatter().formatStringCurrency(
                                          e.cost.first.value.toString()),
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
