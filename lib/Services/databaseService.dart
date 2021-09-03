import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:results/Models/dataModel.dart';

class Database {
  FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Stream<List<DataModel>> allDatabyFirestore() {
    return _firestore
        .collection('institution')
        .snapshots()
        .map((QuerySnapshot queryData) {
      List<DataModel> dataList = [];
      queryData.docs.forEach((id) {
        dataList.add(DataModel.fromDocumentSnapshot(id));
      });
      return dataList;
    });
  }
}
