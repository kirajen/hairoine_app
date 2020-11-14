import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hairoine_app/enums/user_enums.dart';
import 'package:hairoine_app/helpers/user_helpers.dart';
import 'package:hairoine_app/objects/hairInfo.dart';

class DatabaseService {

  final String uid;
  DatabaseService({this.uid});

  // collection reference
  final CollectionReference hairCollection = FirebaseFirestore.instance.collection('hairData');

  Future updateUserData(String name, porosityEnum porosity, sexEnum sex, curl curl ) async {
    return await hairCollection.doc(uid).set({
      'name': name,
      'sex': enumToString(sex),
      'porosity': enumToString(porosity),
      'curl': enumToString(curl)
    });
  }

  List<HairInfo> _hairListFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc){
      return HairInfo(
        name: doc.data()['name'] ?? '',
        sex: doc.data()['sex'] ?? '',
        porosity: doc.data()['porosity'] ?? '',
        curl: doc.data()['curl'] ?? '',
      );
    }).toList();
  }

  Stream<List<HairInfo>> get users {
    return hairCollection.snapshots()
    .map(_hairListFromSnapshot);
  }

}