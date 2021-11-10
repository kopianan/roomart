import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:roomart/application/auth/auth_controller.dart';
import 'package:roomart/application/auth/auth_cubit.dart';
import 'package:roomart/application/rajaongkir/rajaongkir_cubit.dart';
import 'package:roomart/application/transaction/transaction_controller.dart';
import 'package:roomart/domain/raja_ongkir/delivery_cost/cost.dart';
import 'package:roomart/domain/raja_ongkir/delivery_cost/cost_data_model.dart';
import 'package:roomart/domain/raja_ongkir/delivery_cost/costs.dart';
import 'package:roomart/domain/raja_ongkir/full_data_model.dart';
import 'package:roomart/domain/raja_ongkir/province_data_model.dart';
import 'package:roomart/domain/user/user_data_model.dart';
import 'package:roomart/infrastructure/core/pref.dart';
import 'package:roomart/presentation/widgets/button_collection.dart';
import 'package:roomart/utils/my_color.dart';

import '../../injection.dart';

class AddAddressPage extends StatefulWidget {
  static final String TAG = '/address_page';
  @override
  _AddAddressPageState createState() => _AddAddressPageState();
}

class _AddAddressPageState extends State<AddAddressPage> {
  final ongkirCubit = getIt<RajaongkirCubit>();
  final transController = Get.put(TransactionController());
  TextEditingController nama = TextEditingController();
  TextEditingController noHp = TextEditingController();
  TextEditingController alamat = TextEditingController();
  String? provinceName;
  String? cityName;
  String? mprovinceid;
  String? mcityid;
  String? type;
  String? postalCode;
  ProvinceDataModel? selectedProvince;
  FullDataModel? fullDataModel;
  List<FullDataModel> listOfCity = [];
  List<ProvinceDataModel> listOfProvince = [];
  final authController = Get.put(AuthController());
  late UserDataModel _tempData;
// _tempData = Pref().getUserDataModelFromLocal();

  void initialData() {
    _tempData = Pref().getUserDataModelFromLocal();

    nama.text = _tempData.fullName!;
    noHp.text = _tempData.phone!;
    alamat.text = _tempData.address!;
    type = _tempData.village;
    provinceName = _tempData.province;
    cityName = _tempData.city;
    postalCode = _tempData.terrId1;
    mprovinceid = _tempData.terrId2;
    mcityid = _tempData.terrId3;
  }

  void changeAddressType() {
    _tempData = authController.getTemporaryAddress!;

    nama.text = _tempData.fullName!;
    noHp.text = _tempData.phone!;
    alamat.text = _tempData.address!;
    type = _tempData.village;
    provinceName = _tempData.province;
    cityName = _tempData.city;
    postalCode = _tempData.terrId1;
    mprovinceid = _tempData.terrId2;
    mcityid = _tempData.terrId3;
  }

  int addressType = 0;
  String? realName;
  final RajaongkirCubit cityCubit = getIt<RajaongkirCubit>();
  @override
  void initState() {
    addressType = authController.getAddressType();
    if (authController.getAddressType() == 0) {
      initialData();
    } else {
      changeAddressType();
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Change Address"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Expanded(
                  child: RadioListTile<int>(
                    title: Text("Dropship"),
                    value: 0,
                    groupValue: addressType,
                    onChanged: (e) {
                      setState(() {
                        addressType = e!;
                        initialData();
                      });
                    },
                  ),
                ),
                Expanded(
                  child: RadioListTile<int>(
                    title: Text("Alamat Saya"),
                    value: 1,
                    groupValue: addressType,
                    onChanged: (e) {
                      setState(() {
                        addressType = e!;
                        changeAddressType();
                      });
                    },
                  ),
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
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
                          contentPadding:
                              EdgeInsets.only(top: 20, left: 10, right: 10),
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
                                cityCubit
                                    .getCityData(e.result.first.provinceId);
                              },
                            );
                          },
                          builder: (context, state) {
                            return state.maybeMap(
                              orElse: () {
                                return SizedBox();
                              },
                              loading: (e) {
                                return Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text("Load Data Provinsi..."),
                                    Center(child: CircularProgressIndicator()),
                                  ],
                                );
                              },
                              getProvinceData: (e) {
                                return DropdownButtonFormField<
                                    ProvinceDataModel>(
                                  value: selectedProvince,
                                  hint: Text("Pilih provinsi"),
                                  onChanged: (e) {
                                    cityCubit.getCityData(e!.provinceId);
                                    selectedProvince = null;
                                    fullDataModel = null;
                                    setState(() {
                                      selectedProvince = e;
                                    });
                                  },
                                  items: e.result
                                      .map((e) =>
                                          DropdownMenuItem<ProvinceDataModel>(
                                            child: Text(e.province!),
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
                                  hint: Text("Pilih kota"),
                                  onChanged: (dynamic e) {
                                    setState(() {
                                      fullDataModel = e;
                                    });
                                  },
                                  items: e.result
                                      .map((e) =>
                                          DropdownMenuItem<FullDataModel>(
                                            child: Text(
                                                e.type! + " " + e.cityName!),
                                            value: e,
                                          ))
                                      .toList(),
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                width: double.infinity,
                child: DefaultButton1(
                  color: button1,
                  text: "Simpan",
                  onPressed: () {
                    UserDataModel? newUserData = _tempData.copyWith(
                        fullName: nama.text,
                        phone: noHp.text,
                        address: alamat.text,
                        village: fullDataModel!.type,
                        province: fullDataModel!.province,
                        city: fullDataModel!.cityName,
                        terrId1: fullDataModel!.postalCode,
                        terrId2: fullDataModel!.provinceId,
                        terrId3: fullDataModel!.cityId);
                    authController.setAddressType(addressType);
                    authController.setTemporaryAddress(newUserData);

                    Get.back();

                    // authCubit.changeAddress(newUserData);
                  },
                ),
              ),
            )
          ],
        ));
  }
}
