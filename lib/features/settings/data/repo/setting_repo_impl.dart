import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:warehouse_app/core/networking/firebase_source.dart';
import 'package:warehouse_app/features/settings/data/models/person_model.dart';
import '../../../../core/networking/network_result.dart';

class SettingRepoImpl {
  final FirebaseSource _source;

  SettingRepoImpl(this._source);

  // Add Person method
  Future<NetworkResult<void>> addPerson(
      {required String itemId,
      required PersonModel person,
      required String collectionName}) async {
    try {
      final response = await _source.addItem(
        itemId: itemId,
        collection: collectionName,
        data: person.toJson(),
      );
      return NetworkResult.success(response);
    } catch (e) {
      return NetworkResult.failure(e.toString());
    }
  }

  // get all items method
  Future<NetworkResult<CollectionReference<Map<String, dynamic>>>> getAllItems(
      {required String collectionName}) async {
    try {
      final response = await _source.getAllItems(collection: collectionName);

      return NetworkResult.success(response);
    } on FirebaseException catch (error) {
      return handleErrorSwitchStatement(error);
    } catch (e) {
      return NetworkResult.failure(e.toString());
    }
  }

  // handle error method
  NetworkResult<CollectionReference<Map<String, dynamic>>>
      handleErrorSwitchStatement(FirebaseException error) {
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
  }
}
