import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mobility_services_app/models/carpenter.dart';

class DatabaseService {
  final String uid;

  DatabaseService({this.uid});

  // collection reference
  final CollectionReference userCollection =
      Firestore.instance.collection('UserData');

  final CollectionReference carpenterCollection =
      Firestore.instance.collection('Carpenters');

  Future<void> updateUserData(String name, String address) async {
    return await userCollection.document(uid).setData({
      'name': name,
      'address': address,
    });
  }

  Future<void> updateCarpenterData(String name, int cost) async {
    return await userCollection.document(uid).setData({
      'name': name,
      'cost': cost,
    });
  }

  // carpenter list from snapshot
  List<Carpenter> _carpenterListFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.documents.map((doc) {
      //print(doc.data);
      return Carpenter(
        name: doc.data['name'] ?? '',
        cost: doc.data['cost'] ?? 0,
      );
    }).toList();
  }

// get brews stream
  Stream<List<Carpenter>> get carpenters {
    return carpenterCollection.snapshots().map(_carpenterListFromSnapshot);
  }
}
