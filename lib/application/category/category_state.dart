part of 'category_cubit.dart';

@freezed
abstract class CategoryState with _$CategoryState {
  const factory CategoryState.initial() = _Initial;
  const factory CategoryState.loading() = _Loading;
  const factory CategoryState.error(String e) = _Error;
  const factory CategoryState.onGetAllCategory(List<CategoryModel> data) =
      _OnGetAllCategory;
}
