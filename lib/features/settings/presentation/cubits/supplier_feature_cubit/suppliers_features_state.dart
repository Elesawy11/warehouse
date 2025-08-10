import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:warehouse_app/features/settings/data/models/person_model.dart';
part 'suppliers_features_state.freezed.dart';

@freezed
class SuppliersFeaturesState with _$SuppliersFeaturesState {
  const factory SuppliersFeaturesState.initial() = _Initial;
  const factory SuppliersFeaturesState.loading() = Loading;
  const factory SuppliersFeaturesState.getSuccess(List<PersonModel> suppliers) =
      GetSuccess;
  const factory SuppliersFeaturesState.addSuccess() = AddSuccess;
  const factory SuppliersFeaturesState.updateSuccess() = UpdateSuccess;
  const factory SuppliersFeaturesState.deleteSuccess() = DeleteSuccess;
  const factory SuppliersFeaturesState.error(String message) = Error;
}
