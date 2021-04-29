import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:roomart/application/auth/auth_controller.dart';
import 'package:roomart/application/rajaongkir/rajaongkir_cubit.dart';
import 'package:roomart/domain/raja_ongkir/full_data_model.dart';
import 'package:roomart/domain/raja_ongkir/province_data_model.dart';
import 'package:roomart/domain/user/user_data_model.dart';
import 'package:roomart/infrastructure/core/pref.dart';

import '../../injection.dart';

class AddAddressPage extends StatefulWidget {
  static final String TAG = '/address_page';
  @override
  _AddAddressPageState createState() => _AddAddressPageState();
}

class _AddAddressPageState extends State<AddAddressPage> {
  TextEditingController nama = TextEditingController();
  TextEditingController noHp = TextEditingController();
  TextEditingController alamat = TextEditingController();
  String provinceName;
  String cityName;
  String mprovinceid;
  String mcityid;
  ProvinceDataModel selectedProvince;
  FullDataModel fullDataModel;
  List<FullDataModel> listOfCity = [];
  List<ProvinceDataModel> listOfProvince = [];

  String realName;
  final cityCubit = getIt<RajaongkirCubit>();
  final authController = Get.put(AuthController());
  UserDataModel userDataModel;
  @override
  void initState() {
    userDataModel = Pref().getUserDataModelFromLocal();
    authController.setDataModel(userDataModel);
    print(userDataModel);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(15),
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextField(
                controller: nama,
                decoration: InputDecoration(
                  labelText: 'Nama Penerima',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: noHp,
                decoration: InputDecoration(
                  labelText: 'Nomor Handphone',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                maxLines: 5,
                controller: alamat,
                decoration: InputDecoration(
                  labelText: 'AlamatLengkap',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              BlocProvider(
                create: (context) =>
                    getIt<RajaongkirCubit>()..getProvinceData(),
                child: BlocConsumer<RajaongkirCubit, RajaongkirState>(
                  listener: (context, state) {
                    state.maybeMap(
                      orElse: () {},
                      getProvinceData: (e) {
                        cityCubit.getCityData(e.result.first.provinceId);
                      },
                    );
                  },
                  builder: (context, state) {
                    return state.maybeMap(
                      orElse: () {
                        return SizedBox();
                      },
                      loading: (e) {
                        return SizedBox();
                      },
                      getProvinceData: (e) {
                        return DropdownButtonFormField<ProvinceDataModel>(
                          value: selectedProvince,
                          onChanged: (e) {
                            cityCubit.getCityData(e.provinceId);
                            selectedProvince = null;
                            setState(() {
                              selectedProvince = e;
                            });
                          },
                          items: e.result
                              .map((e) => DropdownMenuItem<ProvinceDataModel>(
                                    child: Text(e.province),
                                    value: e,
                                  ))
                              .toList(),
                        );
                      },
                    );
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              BlocProvider(
                create: (context) => cityCubit,
                child: BlocConsumer<RajaongkirCubit, RajaongkirState>(
                  listener: (context, state) {},
                  builder: (context, state) {
                    return state.maybeMap(
                      orElse: () {
                        return SizedBox();
                      },
                      loading: (e) {
                        return SizedBox();
                      },
                      getCityData: (e) {
                        return DropdownButtonFormField(
                          value: fullDataModel,
                          onChanged: (e) {
                            setState(() {
                              fullDataModel = e;
                            });
                          },
                          items: e.result
                              .map((e) => DropdownMenuItem<FullDataModel>(
                                    child: Text(e.cityName),
                                    value: e,
                                  ))
                              .toList(),
                        );
                      },
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
