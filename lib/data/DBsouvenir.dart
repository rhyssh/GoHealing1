// File: DBWisata.dart
import 'package:cloud_firestore/cloud_firestore.dart';

class DBsouvenir {
  final CollectionReference _wisataCollection =
      FirebaseFirestore.instance.collection('DB_souvenir');

  Stream<QuerySnapshot<Map<String, dynamic>>> getWisataStream() {
    return _wisataCollection.snapshots().map(
          (QuerySnapshot<Object?> querySnapshot) =>
              querySnapshot as QuerySnapshot<Map<String, dynamic>>,
        );
  }
}
