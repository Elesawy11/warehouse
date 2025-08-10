import 'package:bloc/bloc.dart';
import 'package:uuid/uuid.dart';
import '../../../../../core/DI/service_locator.dart';
import '../../../../../core/networking/network_result.dart';
import '../../../../../core/utils/constants.dart';
import '../../../data/models/person_model.dart';
import '../../../data/repo/setting_repo_impl.dart';
import '../../views/helpers/supplier_form_controllers.dart';
import 'suppliers_features_state.dart';

class SuppliersFeaturesCubit extends Cubit<SuppliersFeaturesState> {
  SuppliersFeaturesCubit(this._repo)
      : super(const SuppliersFeaturesState.initial());

  final SettingRepoImpl _repo;
  final collectionName = Constants.supplierCollection;
  final createControllers = SupplierFormControllers();
  final updateControllers = SupplierFormControllers();

  // get all supplier method
  Future<void> getAllSuppliers() async {
    emit(const SuppliersFeaturesState.loading());

    final response = await _repo.getAllItems(collectionName: collectionName);

    switch (response) {
      case Success():
        final querySnapshot = await response.data.get();
        final suppliers = querySnapshot.docs
            .map(
              (supplier) => PersonModel.fromJson(supplier.data()),
            )
            .toList();
        emit(SuppliersFeaturesState.getSuccess(suppliers));

        break;
      case Failure():
        emit(SuppliersFeaturesState.error(response.error));
      default:
    }
  }

  // add supplier method

  Future<void> addSupplier() async {
    emit(const SuppliersFeaturesState.loading());
    final id = getIt.get<Uuid>().v4();
    final response = await _repo.addPerson(
      collectionName: Constants.supplierCollection,
      itemId: id,
      person: PersonModel(
        id: id,
        name: createControllers.name.text.trim(),
        phone: createControllers.phone.text.trim(),
        address: createControllers.address.text.trim(),
      ),
    );

    switch (response) {
      case Success():
        emit(const SuppliersFeaturesState.addSuccess());
        getAllSuppliers();
        break;
      case Failure():
        emit(SuppliersFeaturesState.error(response.error));
        break;
    }
  }

  // delete supplier

  Future<void> deleteSupplier({required String id}) async {
    emit(const SuppliersFeaturesState.loading());

    final response =
        await _repo.deleteItem(collectionName: collectionName, id: id);

    switch (response) {
      case Success():
        emit(const SuppliersFeaturesState.deleteSuccess());
        getAllSuppliers();

        break;
      case Failure():
        emit(SuppliersFeaturesState.error(response.error));
      default:
    }
  }

  // update supplier method

  Future<void> updateSupplier({required String id}) async {
    emit(const SuppliersFeaturesState.loading());

    final response = await _repo.updateItem(
      collectionName: collectionName,
      id: id,
      data: {
        updateControllers.name.text.isNotEmpty
            ? 'name'
            : updateControllers.name.text: null,
        updateControllers.phone.text.isNotEmpty
            ? 'phone'
            : updateControllers.phone.text: null,
        updateControllers.address.text.isNotEmpty
            ? 'address'
            : updateControllers.address.text: null,
      },
    );

    switch (response) {
      case Success():
        emit(const SuppliersFeaturesState.updateSuccess());
        getAllSuppliers();

        break;
      case Failure():
        emit(SuppliersFeaturesState.error(response.error));
      default:
    }
  }

  @override
  Future<void> close() {
    createControllers.dispose();
    updateControllers.dispose();
    return super.close();
  }
}
