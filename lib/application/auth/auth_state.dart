part of 'auth_cubit.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.error(String error) = _Error;
  const factory AuthState.onRegisterToRoomart(UserRoomartDataModel user) =
      _OnRegisterToRoomart;
  const factory AuthState.onRegiserUser(RegisterResponseModel response) =
      _OnRegiserUser;
  const factory AuthState.onLoginUser(UserDataModel user) = _OnLoginUser;
  const factory AuthState.onGetArBalance(String balancd) = _OnGetArBalance;
  const factory AuthState.onGetAvailableDiscount(List<DiscountDataModel> list) =
      _OnGetAvailableDiscount;
  const factory AuthState.onAuthenticated(UserDataModel user) =
      _OnAuthenticated;
}
