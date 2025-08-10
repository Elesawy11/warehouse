import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:uuid/uuid.dart';
import 'package:warehouse_app/core/networking/network_result.dart';
import 'package:warehouse_app/core/utils/constants.dart';
import 'package:warehouse_app/features/settings/data/models/person_model.dart';
import 'package:warehouse_app/features/settings/data/repo/setting_repo_impl.dart';
import '../../../../../core/DI/service_locator.dart';
import 'add_supplier_state.dart';

class AddSupplierCubit extends Cubit<AddSupplierState> {
  AddSupplierCubit(this._repo) : super(const AddSupplierState.initial());
  final SettingRepoImpl _repo;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey();
  Future<void> addSupplier() async {
    emit(const AddSupplierState.addSupplierloading());
    final id = getIt.get<Uuid>().v4();
    final response = await _repo.addPerson(
      collectionName: Constants.supplierCollection,
      itemId: id,
      person: PersonModel(
        id: id,
        name: nameController.text.trim(),
        phone: phoneController.text.trim(),
        address: addressController.text.trim(),
      ),
    );

    switch (response) {
      case Success():
        emit(const AddSupplierState.addSupplierSuccess());
        break;
      case Failure():
        emit(AddSupplierState.addSupplierError(error: response.error));
        break;
    }
  }
}
