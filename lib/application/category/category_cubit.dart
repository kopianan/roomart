import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:roomart/domain/category/category_repository.dart';
import 'package:roomart/domain/category/category_model.dart';
import 'package:roomart/domain/auth/auth_repository.dart';

part 'category_state.dart';
part 'category_cubit.freezed.dart';

@injectable
class CategoryCubit extends Cubit<CategoryState> {
  CategoryCubit(this._iCategoryFacade) : super(CategoryState.initial());
  final ICategoryFacade _iCategoryFacade;

  void getAllCategory() async {
    emit(CategoryState.loading());
    try {
      final _result = await _iCategoryFacade.getAllCategory();
      _result.fold(
        (l) => emit(CategoryState.error(l.toString())),
        (r) => emit(CategoryState.onGetAllCategory(r)),
      );
    } catch (e) {
      emit(CategoryState.error(e.toString()));
    }
  }

  void getCategoryByParent(CategoryModel ctgryModel) async {
    emit(CategoryState.loading());
    try {
      final _result =
          await _iCategoryFacade.getCategoryByParentId(ctgryModel.kategoriId);
      _result.fold(
        (l) => emit(CategoryState.error(l.toString())),
        (r) {
          if (r.length != 0) {
            r.removeWhere(
                (data) => (data.count == "0" && data.hasChild == "false"));
            r.removeWhere(
                (data) => (data.countTotal == "0" && data.hasChild == "true"));
            emit(CategoryState.onGetCategoryByParentId(r));
          } else {
            emit(CategoryState.onCategoryEnd(ctgryModel));
          }
        },
      );
    } catch (e) {
      emit(CategoryState.error(e.toString()));
    }
  }
}
