import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/widgets.dart';
import 'package:uuid/uuid.dart';
import 'package:warehouse_app/core/networking/network_result.dart';
import 'package:warehouse_app/features/items/data/models/product_model.dart';
import 'package:warehouse_app/features/items/data/repo/firebase_repo_impl.dart';

import '../../../../../core/DI/service_locator.dart';
import 'add_product_state.dart';

class AddProductCubit extends Cubit<AddProductState> {
  AddProductCubit(this._repo) : super(const AddProductState.initial());

  final FirebaseRepoImpl _repo;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController purchasePriceController = TextEditingController();
  final TextEditingController sellingPriceController = TextEditingController();
  final TextEditingController unitsPerPackageController =
      TextEditingController();
  final TextEditingController unitPurchasePriceController =
      TextEditingController();
  final TextEditingController categoryController = TextEditingController();
  final TextEditingController widthController = TextEditingController();
  final TextEditingController heightController = TextEditingController();
  final TextEditingController weightController = TextEditingController();
  final TextEditingController sizeController = TextEditingController();
  final TextEditingController barcodeController = TextEditingController();
  final TextEditingController supplierIdController = TextEditingController();
  final TextEditingController supplierNameController = TextEditingController();
  final TextEditingController quantityController = TextEditingController();
  final TextEditingController reorderPointController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController locationController = TextEditingController();
  final TextEditingController imageController = TextEditingController();
  final TextEditingController expireDateController = TextEditingController();

  Future<void> addProduct() async {
    emit(const AddProductState.addProductLoading());
    final id = getIt.get<Uuid>().v4();
    final response = await _repo.addProduct(
      itemId: id,
      product: ProductModel(
        productId: id,
        name: nameController.text,
        purchasePrice: double.parse(purchasePriceController.text),
        sellingPrice: double.parse(sellingPriceController.text),
        unitsPerPackage: int.parse(unitsPerPackageController.text),
        unitPurchasePrice: double.parse(unitPurchasePriceController.text),
        imageUrl: imageController.text,
        category: categoryController.text,
        dimensions: Dimensions(
          height: double.parse(heightController.text),
          width: double.parse(widthController.text),
          weight: double.parse(weightController.text),
        ),
        size: sizeController.text,
        barcode: barcodeController.text,
        supplierId: supplierIdController.text,
        supplierName: supplierNameController.text,
        quantity: int.parse(quantityController.text),
        reorderPoint: int.parse(reorderPointController.text),
        description: descriptionController.text,
        location: locationController.text,
        isActive: true,
        lastTransactionId: null,
        expireDate: expireDateController.text,
        createdAt: Timestamp.now().toDate(),
        updatedAt: null,
      ),
    );
    switch (response) {
      case Success():
        emit(const AddProductState.addProductSuccess());

        break;
      case Failure():
        emit(AddProductState.addProductError(error: response.error));
      default:
    }
  }
}
