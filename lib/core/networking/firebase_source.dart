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

  Future<void> deleteItem(
      {required String collectionName, required String id}) async {
    await fireStore.collection(collectionName).doc(id).delete();
  }

  Future<void> updateItem(
      {required String id,
      required String collectionName,
      required Map<String, dynamic> data}) async {
    await fireStore.collection(collectionName).doc(id).update(data);
  }
}
