import 'package:firebase_auth/firebase_auth.dart';

abstract class UserUseCase {
  Future googleLogin() async {}
  Future<UserCredential?> loginPassAndUser(
      String email, String password) async {
    return null;
  }

  Future<bool> createAccount(String email, String password) async {
    return false;
  }

  Future<bool> logout() async {
    return false;
  }

  Future<bool> recoverPass(String email) async {
    return false;
  }
}
