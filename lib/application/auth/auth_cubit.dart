import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:roomart/domain/auth/auth_repository.dart';
import 'package:roomart/domain/auth/register_data._model.dart';
import 'package:roomart/domain/auth/register_request_model.dart';
import 'package:roomart/domain/auth/register_response_model.dart';
import 'package:roomart/domain/models/discount/discount_data_model.dart';
import 'package:roomart/domain/models/discount/discount_request.dart';
import 'package:roomart/domain/models/user/user_roomart_data_model.dart';
import 'package:roomart/domain/user/user_data_model.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

@injectable
class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this.iAuthFacade) : super(AuthState.initial());
  final IAuthFacade? iAuthFacade;

  void checkAuthentication() async {
    emit(AuthState.loading());
    try {
      final _result = await iAuthFacade!.checkAuthentication();
      _result.fold(
        (l) => emit(AuthState.error(l)),
        (r) => emit(AuthState.onAuthenticated(r)),
      );
    } catch (e) {
      emit(AuthState.error(e.toString()));
    }
  }

  void registerToRoomart(RegisterDataModel req) async {
    emit(AuthState.loading());
    try {
      final _result = await iAuthFacade!.registerUserToRoomart(req);
      _result.fold(
        (l) => emit(AuthState.error(l!)),
        (r) => emit(AuthState.onRegisterToRoomart(r!)),
      );
    } catch (e) {
      emit(AuthState.error(e.toString()));
    }
  }

  void registerNewUser(RegisterRequestModel req) async {
    emit(AuthState.loading());
    try {
      final _result = await iAuthFacade!.registerUserToReseller(req);
      _result.fold(
        (l) => emit(AuthState.error(l)),
        (r) => emit(AuthState.onRegiserUser(r)),
      );
    } catch (e) {
      emit(AuthState.error(e.toString()));
    }
  }

  void loginUser(String email, String password) async {
    emit(AuthState.loading());
    try {
      final _result = await iAuthFacade!.loginUser(email, password);
      _result.fold(
        (l) => emit(AuthState.error(l)),
        (r) => emit(AuthState.onLoginUser(r)),
      );
    } catch (e) {
      emit(AuthState.error(e.toString()));
    }
  }

  void getArBalance(String? userId) async {
    emit(AuthState.loading());
    try {
      final _result = await iAuthFacade!.getUserBalance(userId);
      _result.fold(
        (l) => emit(AuthState.error(l)),
        (r) => emit(AuthState.onGetArBalance(r)),
      );
    } catch (e) {
      emit(AuthState.error(e.toString()));
    }
  }

  void getAvailableDiscount() async {
    emit(AuthState.loading());
    try {
      final _result = await iAuthFacade!.getAvailableDiscount();
      _result.fold(
        (l) => emit(AuthState.error(l)),
        (r) => emit(AuthState.onGetAvailableDiscount(r)),
      );
    } catch (e) {
      emit(AuthState.error(e.toString()));
    }
  }

  void changeAddress(UserDataModel? user) async {
    emit(AuthState.loading());
    try {
      final _result = await iAuthFacade!.changeAddress(user);
      _result.fold(
        (l) => emit(AuthState.error(l!)),
        (r) => emit(AuthState.onChangeAddress(r)),
      );
    } catch (e) {
      emit(AuthState.error(e.toString()));
    }
  }

  void forgotPassword(String email) async {
    emit(AuthState.loading());
    try {
      final _result = await iAuthFacade!.forgotPassword(email);
      _result.fold(
        (l) => emit(AuthState.error(l)),
        (r) => emit(AuthState.onForgotPassword(r)),
      );
    } catch (e) {
      emit(AuthState.error(e.toString()));
    }
  }

  void checkCouponCode(DiscountRequest? request) async {
    emit(AuthState.loading());
    try {
      final _result = await iAuthFacade!.checkCouponCode(request);
      _result.fold(
        (l) => emit(AuthState.error(l)),
        (r) => emit(AuthState.onCheckCouponCode(r)),
      );
    } catch (e) {
      emit(AuthState.error(e.toString()));
    }
  }

  void changePassword(String? username, String newPass, String oldPass) async {
    emit(AuthState.loading());
    try {
      final _result =
          await iAuthFacade!.changePassword(username, newPass, oldPass);
      _result.fold(
        (l) => emit(AuthState.error(l!)),
        (r) => emit(AuthState.onChangePassword(r)),
      );
    } catch (e) {
      emit(AuthState.error(e.toString()));
    }
  }
}
