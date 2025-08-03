import 'package:bloc/bloc.dart';
import 'package:warehouse_app/core/networking/network_result.dart';
import 'package:warehouse_app/core/utils/constants.dart';
import 'package:warehouse_app/features/settings/data/models/person_model.dart';
import 'package:warehouse_app/features/settings/data/repo/setting_repo_impl.dart';
import 'get_all_suppliers_state.dart';

class GetAllSuppliersCubit extends Cubit<GetAllSuppliersState> {
  GetAllSuppliersCubit(this._repo)
      : super(const GetAllSuppliersState.initial());

  final SettingRepoImpl _repo;

  Future<void> getAllSuppliers() async {
    emit(const GetAllSuppliersState.getAllSuppliersLoading());

    final response =
        await _repo.getAllItems(collectionName: Constants.supplierCollection);

    switch (response) {
      case Success():
        final querySnapshot = await response.data.get();
        final suppliers = querySnapshot.docs
            .map(
              (supplier) => PersonModel.fromJson(supplier.data()),
            )
            .toList();
        emit(GetAllSuppliersState.getAllSuppliersSuucess(suppliers: suppliers));

        break;
      case Failure():
        emit(GetAllSuppliersState.getAllSuppliersError(error: response.error));
      default:
    }
  }
}
