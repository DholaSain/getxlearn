import 'package:cloud_firestore/cloud_firestore.dart';

class DataModel {
  String? name;
  String? logo;
  String? link;
  String? msg;
  bool? details;

  DataModel({this.name, this.link, this.details, this.logo, this.msg});

  DataModel.fromDocumentSnapshot(DocumentSnapshot myData) {
    name = myData.get('name');
    logo = myData.get('logo');
    link = myData.get('link');
    msg = myData.get('msg');
    details = myData.get('details');
  }
}
