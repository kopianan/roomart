import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:roomart/domain/raja_ongkir/province_data_model.dart';
import 'package:roomart/domain/transaction/transaction_repository.dart';
import 'package:roomart/utils/constants.dart';

abstract class ITrajaOngkirFacade {
  Future<Either<String, List<ProvinceDataModel>>> getProvinceList();
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

    // getProvinceData(bool newPage) async {
    //   var _baseUrl = "https://api.rajaongkir.com/starter/province";

    //   var res = await http.get(_baseUrl, headers: {"key": "e1eedfd1a43f04a99122dbcc2f4a0291"});
    //   var resBody = json.decode(res.body);

    //   var test = ProvinceModel.fromJson(resBody);
    //   data.setListOfProvince(test.rajaongkir.results);
    //   setState(() {
    //     listOfProvince = test.rajaongkir.results;
    //     provinceName = widget.userData.province;
    //     if (provinceName == "" || provinceName == " ") {
    //       provinceName = listOfProvince.first.province;
    //       getCityDataBlank(listOfProvince.first.provinceId);
    //     } else {
    //       listOfProvince.map((it) {
    //         if (it.province == provinceName) {
    //           if (newPage) getCityData(it.provinceId, newPage);
    //         }
    //       }).toList();
    //     }
    //   });
    // }
  }
}
