part of 'item_cubit.dart';

@freezed
abstract class ItemState with _$ItemState {
  const factory ItemState.initial() = _Initial;
  const factory ItemState.loading() = _Loading;
  const factory ItemState.error(String e) = _Error;
  const factory ItemState.onGetItemLazy(List<DataItemModel> data) =
      _OnGetItemLazy;
  const factory ItemState.onGetSearchItem(List<DataItemModel> data) =
      _OnGetSearchItem;
  const factory ItemState.onGetItemByCategoryId(List<DataItemModel> data) =
      _OnGetItemByCategoryId;
}
