import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:uuid/uuid.dart';
import 'package:warehouse_app/core/networking/network_result.dart';
import 'package:warehouse_app/features/items/data/models/product_model.dart';
import 'package:warehouse_app/features/items/data/repo/firebase_repo_impl.dart';

import '../../../../../core/DI/service_locator.dart';
import 'add_product_state.dart';

class AddProductCubit extends Cubit<AddProductState> {
  AddProductCubit(this._repo) : super(const AddProductState.initial());

  final FirebaseRepoImpl _repo;

  Future<void> addProduct() async {
    emit(const AddProductState.addProductLoading());
    final id = getIt.get<Uuid>().v4();
    final response = await _repo.addProduct(
      itemId: id,
      product: ProductModel(
        productId: id,
        name: 'product1',
        purchasePrice: 200,
        sellingPrice: 250.5,
        unitsPerPackage: null,
        unitPurchasePrice: null,
        imageUrl: null,
        category: 'category1',
        dimensions: null,
        size: null,
        barcode: null,
        supplierId: '123',
        supplierName: 'ahmed',
        quantity: 20,
        reorderPoint: 15,
        description: 'description',
        location: 'location',
        isActive: true,
        lastTransactionId: '230',
        expireDate: 'data',
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
