part of 'auth_bloc.dart';

abstract class AuthEvent {
  const AuthEvent();
}

class EmailEvent extends AuthEvent {
  final String email;
  EmailEvent(this.email);
}

class PasswordEvent extends AuthEvent {
  final String pass;
  PasswordEvent(this.pass);
}

class CurrentUser extends AuthEvent {
  final User user;
  CurrentUser(this.user);
}

class LoadingEvent extends AuthEvent {
  final bool load;
  LoadingEvent(this.load);
}

class LoggedUser extends AuthEvent {}
