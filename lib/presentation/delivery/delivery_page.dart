import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:roomart/application/rajaongkir/rajaongkir_cubit.dart';
import 'package:roomart/application/transaction/transaction_controller.dart';
import 'package:roomart/domain/raja_ongkir/cost_request_model.dart';
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
        courier: "jne", destination: "114", origin: "501", weight: 5000);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocProvider(
        create: (context) =>
            ongkir..getCost(requestModel, Constants().courierList),
        child: BlocConsumer<RajaongkirCubit, RajaongkirState>(
          listener: (context, state) {
            state.maybeMap(
              orElse: () {},
              getCostsList: (e) {
                transactionController.setCostList(e.costDataModel);
              },
            );
          },
          builder: (context, state) {
            return GetBuilder<TransactionController>(
              builder: (trans) {
                var deliveryType = trans.getCostList;
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
                                    deliveryType[index].first.name,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                Column(
                                    children: deliveryType[index]
                                        .first
                                        .costs
                                        .map((e) => Card(
                                              child: RadioListTile<Costs>(
                                                contentPadding:
                                                    EdgeInsets.symmetric(
                                                        horizontal: 10),
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
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                secondary: Text(
                                                  Formatter()
                                                      .formatStringCurrency(e
                                                          .cost.first.value
                                                          .toString()),
                                                  style:
                                                      TextStyle(fontSize: 17),
                                                ),
                                                title: Text(
                                                  e.description.toString(),
                                                  style:
                                                      TextStyle(fontSize: 17),
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
              },
            );
          },
        ),
      ),
    );
  }
}
