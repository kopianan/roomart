import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:roomart/domain/auth/register_data._model.dart';
import 'package:roomart/domain/auth/register_request_model.dart';
import 'package:roomart/domain/auth/register_response_model.dart';
import 'package:roomart/domain/models/discount/discount_data_model.dart';
import 'package:roomart/domain/models/discount/discount_request.dart';
import 'package:roomart/domain/models/user/user_roomart_data_model.dart';
import 'package:roomart/domain/user/user_data_model.dart';
import 'package:roomart/infrastructure/core/pref.dart';
import 'package:roomart/utils/constants.dart';

abstract class IAuthFacade {
  Future<Either<String, UserRoomartDataModel>> registerUserToRoomart(
      RegisterDataModel request);
  Future<Either<String, RegisterResponseModel>> registerUserToReseller(
      RegisterRequestModel request);
  Future<Either<String, UserDataModel>> loginUser(
      String email, String password);
  Future<Either<String, UserDataModel>> checkAuthentication();
  Future<Either<String, String>> getUserBalance(String userId);
  Future<Either<String, List<DiscountDataModel>>> getAvailableDiscount();
  Future<Either<String, UserDataModel>> changeAddress(UserDataModel userData);
  Future<Either<String, String>> forgotPassword(String email);
  Future<Either<String, String>> checkCouponCode(DiscountRequest request);
  Future<Either<String, UserDataModel>> changePassword(
    String username,
    String newPassword,
    String oldPassword,
  );
}

@LazySingleton(as: IAuthFacade)
class AuthRepository extends IAuthFacade {
  Dio dio = Dio();

  Options options =
      Options(headers: {"AccessKey": Constants().accessKeyUltimo});

  @override
  Future<Either<String, RegisterResponseModel>> registerUserToReseller(
      RegisterRequestModel request) async {
    try {
      Response response = await dio.post(
          "${Constants().getUltimoBaseUrl}/RoomartAccount/Register",
          data: request.toJson(),
          options: options);

      RegisterResponseModel user =
          RegisterResponseModel.fromJson(response.data);

      return right(user);
    } on DioError catch (e) {
      return left(e.response.data['Message'].toString());
    } catch (e) {
      return left(e.toString());
    }
  }

  @override
  Future<Either<String, UserRoomartDataModel>> registerUserToRoomart(
      RegisterDataModel request) async {
    Response response;
    try {
      //Register to POS first

      response = await dio.get(
          "${Constants().auhtBaseUrl}api,User.vm?method=register&email=${request.email}&password=${request.password}&firstname=${request.name}&dobday=${request.dateTime.day}&dobmonth=${request.dateTime.month}&dobyear=${request.dateTime.year}&phone=${request.phone}&address=alamat&tocust=true&ctype=DM151627192557861134072");

      var model1 = UserRoomartDataModel.fromJson(json.decode(response.data));

      return right(model1);
    } on DioError catch (e) {
      return left(e.response.data['message'].toString());
    } catch (e) {
      return left(e.toString());
    }
  }

  @override
  Future<Either<String, UserDataModel>> loginUser(
      String email, String password) async {
    Response response;

    try {
      response = await dio.get(
          "${Constants().auhtBaseUrl}api,User.vm?method=login&email=$email&password=$password");

      var data = UserDataModel.fromJson(json.decode(response.data));
      if (data.error != 1) {
        return right(data);
      }
      return left(data.messageError.toString());
    } on DioError catch (e) {
      return left(json.decode(e.response.data)['message'].toString());
    } catch (e) {
      return left(e.toString());
    }
  }

  @override
  Future<Either<String, UserDataModel>> checkAuthentication() async {
    var pref = Pref();
    UserDataModel user;
    try {
      user = pref.getUserDataModelFromLocal();
      return right(user);
    } catch (e) {
      return left("Not Authenticated");
    }
  }

  @override
  Future<Either<String, String>> getUserBalance(String userId) async {
    Response response;

    try {
      response = await dio.get(
          "${Constants().baseUrlProduction}api,AR.vm?cmd=2&custid=$userId");
      var _balance = json.decode(response.data).first['ar_balance'];

      return right(_balance);
    } on DioError catch (e) {
      return left(json.decode(e.response.data)['message'].toString());
    } catch (e) {
      return left(e.toString());
    }
  }

  @override
  Future<Either<String, List<DiscountDataModel>>> getAvailableDiscount() async {
    Response response;

    try {
      response =
          await dio.get("${Constants().baseUrlProduction}api,SPGDiscount.vm");
      List discountList = json.decode(response.data);

      var _list =
          discountList.map((e) => DiscountDataModel.fromJson(e)).toList();
      return right(_list);
    } on DioError catch (e) {
      return left(json.decode(e.response.data)['message'].toString());
    } catch (e) {
      return left(e.toString());
    }
  }

  @override
  Future<Either<String, UserDataModel>> changeAddress(
      UserDataModel userData) async {
    Response response;

    try {
      response = await dio.get(
          "${Constants().getBaseUrlProductionBackup}api,User.vm?method=saveProfile&email=${userData.email}&province=${userData.province}&city=${userData.city}&address=${userData.address}&village=${userData.village}&terrId1=${userData.terrId1}&terrId2=${userData.terrId2}&terrId3=${userData.terrId3}&tocust=true");
      final data = json.decode(response.data);

      var _res = UserDataModel.fromJson(data);
      return right(_res);
    } on DioError catch (e) {
      print(e.requestOptions);
      return left(json.decode(e.response.data)['message'].toString());
    } catch (e) {
      print(e);
      return left(e.toString());
    }
  }

  @override
  Future<Either<String, String>> forgotPassword(String email) async {
    Response response;
    try {
      response = await dio.get(
          "${Constants().getBaseUrlProductionBackup}api,SPGApps.vm?cmd=3&custemail=$email");
      List data = json.decode(response.data);
      if (data.length == 0) {
        return left("email tidak ditemukan");
      } else {
        return right("email telah dikirim");
      }
    } on DioError catch (e) {
      return left("Masalah");
    } catch (e) {
      return left(e.toString());
    }
  }

  @override
  Future<Either<String, String>> checkCouponCode(
      DiscountRequest request) async {
    Response response;
    print(request.toJson());
    try {
      response = await dio.post(
        "${Constants().getUltimoBaseUrl}/RoomartProducts/GetDiscountByCode",
        data: request.toJson(),
        options: options,
      );

      double data = response.data;
      print(response.requestOptions);
      return right(data.toString());
    } on DioError catch (e) {
      return left(e.toString());
    } catch (e) {
      return left(e.toString());
    }
  }

  @override
  Future<Either<String, UserDataModel>> changePassword(
      String username, String newPassword, String oldPassword) async {
    Response response;
    try {
      response = await dio.get(
          '${Constants().baseUrlProductionBackup}/api,User.vm?method=changePassword&email=$username&oldpass=$oldPassword&newpass=$newPassword');

      var responseJson = json.decode(response.data);
      var _result = UserDataModel.fromJson(responseJson);
      try {
        if (_result.error == 1) {
          return left(_result.messageError);
        }
      } catch (e) {
        return left(e.toString());
      }

      return right(_result);
    } catch (e) {
      return left(e.toString());
    }
  }
}
