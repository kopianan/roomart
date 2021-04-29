import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:roomart/domain/raja_ongkir/cost_request_model.dart';
import 'package:roomart/domain/raja_ongkir/full_data_model.dart';
import 'package:roomart/domain/raja_ongkir/province_data_model.dart';
import 'package:roomart/utils/constants.dart';

import 'delivery_cost/cost_data_model.dart';

abstract class ITrajaOngkirFacade {
  Future<Either<String, List<ProvinceDataModel>>> getProvinceList();
  Future<Either<String, List<FullDataModel>>> getCityDataList(
      String provinceId);
  Future<Either<String, List<List<CostDataModel>>>> getCost(
      CostRequestModel costRequestModel, List<String> courierCode);
}

@LazySingleton(as: ITrajaOngkirFacade)
class RajaongkirRepository extends ITrajaOngkirFacade {
  Dio dio = Dio();

  Options options =
      Options(headers: {"AccessKey": Constants().accessKeyUltimo});

  @override
  Future<Either<String, List<ProvinceDataModel>>> getProvinceList() async {
    Response response;
    var _baseUrl = "https://api.rajaongkir.com/starter/province";

    try {
      response = await dio.get(_baseUrl,
          options:
              Options(headers: {"key": "e1eedfd1a43f04a99122dbcc2f4a0291"}));
      List resBody = response.data['rajaongkir']['results'];

      final _result =
          resBody.map((md) => ProvinceDataModel.fromJson(md)).toList();

      return right(_result);
    } catch (e) {
      return left(e.toString());
    }
  }

  @override
  Future<Either<String, List<FullDataModel>>> getCityDataList(
      String provinceId) async {
    Response response;
    var _baseUrl = "https://api.rajaongkir.com/starter/city";

    try {
      response = await dio.get(_baseUrl + "?province=${provinceId}",
          options:
              Options(headers: {"key": "e1eedfd1a43f04a99122dbcc2f4a0291"}));
      List resBody = response.data['rajaongkir']['results'];

      final _result = resBody.map((md) => FullDataModel.fromJson(md)).toList();

      return right(_result);
    } catch (e) {
      return left(e.toString());
    }
  }

  @override
  Future<Either<String, List<List<CostDataModel>>>> getCost(
      CostRequestModel costRequestModel, List<String> courierCode) async {
    List<List<CostDataModel>> listCosts = <List<CostDataModel>>[];

    var _baseUrl = "https://api.rajaongkir.com/starter/cost";
    var _req = costRequestModel;
    List<String> listOfCourier = courierCode;

    var _dioList = listOfCourier.map(
      (e) {
        return dio.post(_baseUrl,
            data: _req.copyWith(courier: e).toJson(),
            options:
                Options(headers: {"key": "e1eedfd1a43f04a99122dbcc2f4a0291"}));
      },
    ).toList();
    try {
      List<Response> listResponse = await Future.wait(_dioList);

      listResponse.forEach(
        (element) {
          List _listResponse = element.data['rajaongkir']['results'];
          var _listConverted =
              _listResponse.map((e) => CostDataModel.fromJson(e)).toList();
          listCosts.add(_listConverted);
        },
      );

      return right(listCosts);
    } catch (e) {
      return left(e.toString());
    }
  }
}
