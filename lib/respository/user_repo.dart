import 'package:delivery_thiago/services/user_service.dart';
import 'package:delivery_thiago/usecases/user_usecase.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserRepo implements UserUseCase {
  final userService = UserService();

  @override
  Future<bool> createAccount(String email, String password) async {
    return userService.createAccount(email, password);
  }

  @override
  Future googleLogin() async {
    userService.googleSignIn;
  }

  @override
  Future<UserCredential?> loginPassAndUser(
      String email, String password) async {
    return userService.loginPassAndUser(email, password);
  }

  @override
  Future<bool> logout() async {
    return userService.logout();
  }

  @override
  Future<bool> recoverPass(String email) async {
    return userService.recoverPass(email);
  }
}
