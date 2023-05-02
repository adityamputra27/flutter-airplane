import 'package:airplane/models/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserService {
  final CollectionReference _userReference =
      FirebaseFirestore.instance.collection('users');

  Future<void> setUser(UserModel userModel) async {
    try {
      _userReference.doc(userModel.id).set({
        'email': userModel.email,
        'name': userModel.name,
        'hobby': userModel.hobby,
        'balance': userModel.balance,
      });
    } catch (e) {
      rethrow;
    }
  }
}
