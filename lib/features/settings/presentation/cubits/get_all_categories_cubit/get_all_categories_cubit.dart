import 'package:bloc/bloc.dart';
import 'package:warehouse_app/core/networking/network_result.dart';
import 'package:warehouse_app/core/utils/constants.dart';
import 'package:warehouse_app/features/settings/data/repo/setting_repo_impl.dart';

import 'get_all_categories_state.dart';

class GetAllCategoriesCubit extends Cubit<GetAllCategoriesState> {
  GetAllCategoriesCubit(this._repo)
      : super(const GetAllCategoriesState.initial());
  final SettingRepoImpl _repo;

  Future<void> getAllCategories() async {
    emit(const GetAllCategoriesState.getAllCategoriesLoading());

    final response =
        await _repo.getAllItems(collectionName: Constants.categoryCollection);

    switch (response) {
      case Success():
        final querySnapshot = await response.data.get();
        final List<String> categories = querySnapshot.docs
            .map((category) => category.data().toString())
            .toList();
        emit(GetAllCategoriesState.getAllCategoriesSuccess(
            categories: categories));

        break;
      case Failure():
        emit(
            GetAllCategoriesState.getAllCategoriesError(error: response.error));
      default:
    }
  }
}
