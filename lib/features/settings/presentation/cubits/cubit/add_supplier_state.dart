import 'package:freezed_annotation/freezed_annotation.dart';
part 'add_supplier_state.freezed.dart';

@freezed
class AddSupplierState with _$AddSupplierState {
  const factory AddSupplierState.initial() = _Initial;
  const factory AddSupplierState.addSupplierloading() = AddSupplierloading;
  const factory AddSupplierState.addSupplierError({required String error}) =
      AddSupplierError;
  const factory AddSupplierState.addSupplierSuccess() = AddSupplierSuccess;
}
