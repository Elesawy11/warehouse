
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:warehouse_app/core/networking/network_result.dart';
import 'package:warehouse_app/core/utils/constants.dart';
import 'package:warehouse_app/core/networking/firebase_source.dart';

import '../models/product_model.dart';

class FirebaseRepoImpl {
  final FirebaseSource _source;

  FirebaseRepoImpl(this._source);

  Future<NetworkResult<void>> addProduct(
      {required String itemId, required ProductModel product}) async {
    try {
      final response = await _source.addItem(
        itemId: itemId,
        collection: Constants.productCollection,
        data: product.toJson(),
      );
      return NetworkResult.success(response);
    } catch (e) {
      return NetworkResult.failure(e.toString());
    }
  }

  Future<NetworkResult<CollectionReference<Map<String, dynamic>>>>
      getAllProduct() async {
    try {
      final response =
          await _source.getAllItems(collection: Constants.productCollection);

      

      return NetworkResult.success(response);
    } on FirebaseException catch (error) {
      switch (error.code) {
        case 'permission-denied':
          return const NetworkResult.failure(
              'You do not have permission to access this data.');

        case 'unavailable':
          return const NetworkResult.failure(
              'Network error. Please check your internet connection.');

        default:
          return NetworkResult.failure('An error occurred: ${error.message}');
      }
    } catch (e) {
      return NetworkResult.failure(e.toString());
    }
  }
}
