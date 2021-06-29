import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:roomart/application/transaction/transaction_cubit.dart';
import 'package:roomart/domain/transaction/models/payment_conf_data_model.dart';
import 'package:roomart/domain/transaction/transaction_data_model.dart';
import 'package:roomart/presentation/widgets/button_collection.dart';
import 'package:roomart/utils/constants.dart';

import '../../injection.dart';

class PaymentConfirmationPage extends StatefulWidget {
  static final String TAG = '/payment_confirmation_page';
  const PaymentConfirmationPage({Key? key}) : super(key: key);

  @override
  _PaymentConfirmationPageState createState() =>
      _PaymentConfirmationPageState();
}

class _PaymentConfirmationPageState extends State<PaymentConfirmationPage> {
  final List<String> _dropdown = ["Transfer", "Setor Tunai"];
  final TextEditingController dateController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController numberController = TextEditingController();
  double distance = 10.0;
  var detail;
  late String _choiceDropdown;

  @override
  void initState() {
    _choiceDropdown = _dropdown.first;
    detail = Get.arguments as TransactionDataModel?;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Konfirmasi Pembayaran"),
      ),
      body: BlocProvider(
        create: (context) => getIt<TransactionCubit>(),
        child: BlocConsumer<TransactionCubit, TransactionState>(
          listener: (context, state) {
            state.maybeMap(
                orElse: () {},
                onConfirmPayment: (e) {
                  Get.back();
                  Get.showSnackbar(
                    GetBar(
                      message: e.confirm,
                      duration: Duration(seconds: 2),
                    ),
                  );
                },
                error: (e) {
                  Get.showSnackbar(
                    GetBar(
                      message: e.error,
                      duration: Duration(seconds: 2),
                    ),
                  );
                });
          },
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Tipe Pembayaran"),
                              SizedBox(height: 5),
                              DropdownButtonFormField<String>(
                                isDense: true,
                                decoration: InputDecoration(
                                    fillColor: Colors.white,
                                    hintText: "Transfer / Setor Tunai"),
                                items: _dropdown.map((value) {
                                  return DropdownMenuItem<String>(
                                    child: Text(value),
                                    value: value,
                                  );
                                }).toList(),
                                value: _choiceDropdown,
                                onChanged: (value) {
                                  _choiceDropdown = value!;
                                  setState(() {});
                                },
                              ),
                            ],
                          ),
                          SizedBox(height: distance),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Tanggal"),
                              SizedBox(height: 5),
                              TextFormField(
                                controller: dateController,
                                onTap: () async {
                                  DateTime? date = await showDatePicker(
                                      context: context,
                                      initialDate: DateTime.now(),
                                      firstDate:
                                          DateTime(DateTime.now().year - 1),
                                      lastDate: DateTime.now());
                                  if (date != null) {
                                    dateController.text =
                                        DateFormat('dd/MM/yyyy hh:mm')
                                            .format(date)
                                            .toString();
                                  }
                                },
                                decoration: InputDecoration(
                                    fillColor: Colors.white,
                                    hintText: "Pilih Tanggal",
                                    suffixIcon: Icon(Icons.date_range)),
                                readOnly: true,
                              ),
                            ],
                          ),
                          SizedBox(height: distance),
                          (_choiceDropdown == "Transfer")
                              ? Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Nama"),
                                    SizedBox(height: 5),
                                    TextFormField(
                                      controller: nameController,
                                      decoration: InputDecoration(
                                        fillColor: Colors.white,
                                        hintText: "Nama Pemilik Rekening",
                                      ),
                                    ),
                                  ],
                                )
                              : SizedBox(),
                          SizedBox(height: distance),
                          (_choiceDropdown == "Transfer")
                              ? Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Nomor"),
                                    SizedBox(height: 5),
                                    TextFormField(
                                      controller: numberController,
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        fillColor: Colors.white,
                                        hintText: "Nomor Rekeneing",
                                      ),
                                    ),
                                  ],
                                )
                              : SizedBox()
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                      width: double.infinity,
                      child: state.maybeMap(orElse: () {
                        return DefaultButton1(
                          color: Colors.orange,
                          text: "KONFIRMASI",
                          onPressed: () {
                            if (_choiceDropdown == "Transfer") {
                              if (dateController.text == "" ||
                                  nameController.text == "" ||
                                  numberController.text == "") {
                                Get.showSnackbar(GetBar(
                                    message: "Lengkapi Data",
                                    duration: Duration(seconds: 2)));
                              } else {
                                _onConfirmPayment(context);
                              }
                            } else {
                              if (dateController.text == "") {
                                Get.showSnackbar(GetBar(
                                    message: "Lengkapi Data",
                                    duration: Duration(seconds: 2)));
                              } else {
                                _onConfirmPayment(context);
                              }
                            }
                          },
                        );
                      }, loading: (e) {
                        return LoadingButton1();
                      }))
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  void _onConfirmPayment(BuildContext context) {
    var _data = PaymentConfDataModel(
      token: Constants().tokenUltimo,
      invoiceNumber: detail.number,
      bankDestinationId: detail.bankID,
      dateTimePayment: dateController.text,
      accountHolderNumber: numberController.text,
      accountHolderName: nameController.text,
    );
    context.read<TransactionCubit>().confrimPayment(_data);
  }
}
