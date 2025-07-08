import 'package:warehouse_app/core/networking/network_result.dart';
import 'package:warehouse_app/core/utils/constants.dart';
import 'package:warehouse_app/features/items/data/source/firebase_source.dart';

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
}
