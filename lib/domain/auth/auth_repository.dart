import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:roomart/domain/auth/register_data._model.dart';
import 'package:roomart/domain/auth/register_request_model.dart';
import 'package:roomart/domain/auth/register_response_model.dart';
import 'package:roomart/domain/models/user/user_roomart_data_model.dart';
import 'package:roomart/utils/constants.dart';

abstract class IAuthFacade {
  Future<Either<String, UserRoomartDataModel>> registerUserToRoomart(
      RegisterDataModel request);
  Future<Either<String, RegisterResponseModel>> registerUserToReseller(
      RegisterRequestModel request);
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
          "${Constants().baseUrlProductionBackup}api,User.vm?method=register&email=${request.email}&password=${request.password}&firstname=${request.name}&dobday=${request.dateTime.day}&dobmonth=${request.dateTime.month}&dobyear=${request.dateTime.year}&phone=${request.phone}&address=alamat&tocust=true&ctype=DM151627192557861134072");

      var model1 = UserRoomartDataModel.fromJson(json.decode(response.data));

      return right(model1);
    } on DioError catch (e) {
      return left(e.response.data['message'].toString());
    } catch (e) {
      return left(e.toString());
    }
  }
}
