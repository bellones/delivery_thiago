part of 'auth_bloc.dart';

class AuthState {
  final User? user;
  final bool loading;
  final String email;
  final String password;

  const AuthState(
      {this.user, this.loading = false, this.email = '', this.password = ''});

  AuthState copyWith(
      {String? email, String? password, bool? loading, User? user}) {
    return AuthState(
        email: email ?? this.email,
        loading: loading ?? this.loading,
        password: password ?? this.password,
        user: user ?? this.user);
  }
}
