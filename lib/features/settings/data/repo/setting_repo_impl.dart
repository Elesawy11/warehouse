import 'package:warehouse_app/core/networking/firebase_source.dart';
import 'package:warehouse_app/features/settings/data/models/person_model.dart';

import '../../../../core/networking/network_result.dart';
import '../../../../core/utils/constants.dart';

class SettingRepoImpl {
  final FirebaseSource _source;

  SettingRepoImpl(this._source);

    Future<NetworkResult<void>> addPerson(
      {required String itemId, required PersonModel person}) async {
    try {
      final response = await _source.addItem(
        itemId: itemId,
        collection: Constants.supplierCollection,
        data: person.toJson(),
      );
      return NetworkResult.success(response);
    } catch (e) {
      return NetworkResult.failure(e.toString());
    }
  }

}
