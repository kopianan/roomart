import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:roomart/domain/item/data_item_model.dart';
import 'package:roomart/domain/item/item_repository.dart';

part 'item_state.dart';
part 'item_cubit.freezed.dart';

@injectable
class ItemCubit extends Cubit<ItemState> {
  ItemCubit(this.iiTemFacae) : super(ItemState.initial());

  IITemFacae iiTemFacae;

  void getItemListLazy(int limit, int offset) async {
    emit(ItemState.loading());
    try {
      final _result =
          await iiTemFacae.getItemLazyLoading(limit: limit, offset: offset);
      _result.fold(
        (l) => emit(ItemState.error(l.toString())),
        (r) => emit(ItemState.onGetItemLazy(r)),
      );
    } catch (e) {
      emit(ItemState.error(e.toString()));
    }
  }

  void getItemListByCategoryId(
      {@required String categoryId, int limit = 1000, int offset = 0}) async {
    emit(ItemState.loading());
    try {
      final _result =
          await iiTemFacae.getItemListByCategoryId(categoryId: categoryId);
      _result.fold(
        (l) => emit(ItemState.error(l.toString())),
        (r) => emit(ItemState.onGetItemByCategoryId(r)),
      );
    } catch (e) {
      emit(ItemState.error(e.toString()));
    }
  }
}
