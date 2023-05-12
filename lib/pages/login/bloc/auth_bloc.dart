import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const AuthState()) {
    on<EmailEvent>((event, emit) => emit(state.copyWith(email: event.email)));
    on<PasswordEvent>(
        (event, emit) => emit(state.copyWith(password: event.pass)));
    on<LoadingEvent>(
        (event, emit) => emit(state.copyWith(loading: event.load)));

    on<CurrentUser>((event, emit) => emit(state.copyWith(user: event.user)));
    on<LoggedUser>((event, emit) =>
        emit(state.copyWith(user: FirebaseAuth.instance.currentUser)));
  }
}
