import 'package:freezed_annotation/freezed_annotation.dart';
part 'get_all_categories_state.freezed.dart';

@freezed
class GetAllCategoriesState with _$GetAllCategoriesState {
  const factory GetAllCategoriesState.initial() = _Initial;
  const factory GetAllCategoriesState.getAllCategoriesLoading() =
      GetAllCategoriesLoading;
  const factory GetAllCategoriesState.getAllCategoriesError(
      {required String error}) = GetAllCategoriesError;
  const factory GetAllCategoriesState.getAllCategoriesSuccess(
      {required List<String> categories}) = GetAllCategoriesSuccess;
}
