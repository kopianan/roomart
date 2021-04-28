import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:roomart/domain/auth/auth_repository.dart';
import 'package:roomart/domain/auth/register_data._model.dart';
import 'package:roomart/domain/auth/register_request_model.dart';
import 'package:roomart/domain/auth/register_response_model.dart';
import 'package:roomart/domain/models/user/user_roomart_data_model.dart';
import 'package:roomart/domain/user/user_data_model.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

@injectable
class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this.iAuthFacade) : super(AuthState.initial());
  final IAuthFacade iAuthFacade;

  void registerToRoomart(RegisterDataModel req) async {
    emit(AuthState.loading());
    try {
      final _result = await iAuthFacade.registerUserToRoomart(req);
      _result.fold(
        (l) => emit(AuthState.error(l)),
        (r) => emit(AuthState.onRegisterToRoomart(r)),
      );
    } catch (e) {
      emit(AuthState.error(e.toString()));
    }
  }

  void registerNewUser(RegisterRequestModel req) async {
    emit(AuthState.loading());
    try {
      final _result = await iAuthFacade.registerUserToReseller(req);
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
      final _result = await iAuthFacade.loginUser(email, password);
      _result.fold(
        (l) => emit(AuthState.error(l)),
        (r) => emit(AuthState.onLoginUser(r)),
      );
    } catch (e) {
      emit(AuthState.error(e.toString()));
    }
  }
}
