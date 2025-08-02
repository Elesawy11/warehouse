import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseSource {
  final FirebaseFirestore fireStore;

  FirebaseSource(this.fireStore);

  Future<void> addItem({
    required String itemId,
    required String collection,
    required Map<String, dynamic> data,
  }) async {
    await fireStore.collection(collection).doc(itemId).set(data);
  }

  Future<CollectionReference<Map<String, dynamic>>> getAllItems(
      {required String collection}) async {
    final response = fireStore.collection(collection);

    return response;
  }
}
