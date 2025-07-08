import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseSource {
  final FirebaseFirestore _source;

  FirebaseSource(this._source);

  Future<void> addItem({
    required String itemId,
    required String collection,
    required Map<String, dynamic> data,
  }) async {
    await _source.collection(collection).doc(itemId).set(data);
  }
}
