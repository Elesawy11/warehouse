import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:warehouse_app/features/settings/data/models/person_model.dart';
part 'get_all_suppliers_state.freezed.dart';

@freezed
class GetAllSuppliersState with _$GetAllSuppliersState {
  const factory GetAllSuppliersState.initial() = _Initial;
  const factory GetAllSuppliersState.getAllSuppliersLoading() =
      GetAllSuppliersLoading;
  const factory GetAllSuppliersState.getAllSuppliersError(
      {required String error}) = GetAllSuppliersError;
  const factory GetAllSuppliersState.getAllSuppliersSuucess(
      {required List<PersonModel> suppliers}) = GetAllSuppliersSuucess;
}
