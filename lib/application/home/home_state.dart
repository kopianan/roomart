part of 'home_cubit.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.loading() = _Loading;
  const factory HomeState.error(String e) = _Error;
  const factory HomeState.onGetBanner(
      Either<String, List<BannerDataModel>> data) = _OnGetBanner;
}
