import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  static const ID = "uid";
  static const NAME = "name";
  static const EMAIL = "email";

  String? _id;
  String? _name;
  String? _email;

//  getters
  String get name => _name!;
  String get email => _email!;
  String get id => _id!;

  UserModel.fromSnapshot(DocumentSnapshot snapshot) {
    _name = snapshot[NAME];
    _email = snapshot[EMAIL];
    _id = snapshot[ID];
  }
}
