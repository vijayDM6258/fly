import 'package:firebase_auth/firebase_auth.dart';
import 'package:fly/models/user_model.dart';
import 'package:get/get.dart';

class AuthHelper {
  AuthHelper._();

  static final AuthHelper authHelper = AuthHelper._();

  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  Future<String?> SignupWithEmailandPasswrod(
      {required String Email, required String Password}) async {
    UserCredential userCredential = await firebaseAuth
        .createUserWithEmailAndPassword(email: Email, password: Password);
    UserModel userModel = UserModel(
        id: userCredential.user!.uid,
        Name: "${Email.split("@")[0].capitalize}",
        Email: Email,
        Password: Password);
  }
}
