import 'package:delivery_thiago/pages/home/home_page.dart';
import 'package:delivery_thiago/pages/login/bloc/auth_bloc.dart';
import 'package:delivery_thiago/respository/user_repo.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginController {
  final BuildContext context;
  LoginController({required this.context});
  final userRepo = UserRepo();

  Future<bool> login() async {
    final state = context.read<AuthBloc>().state;
    if (validate()) {
      final result =
          await userRepo.loginPassAndUser(state.email, state.password);
      if (result?.user == null) {
        msg('Erro', "Usuário ou Senha Inválidos");
      } else {
        setUser(result!.user!);
        goHome();
      }
      return result?.user == null ? false : true;
    } else {
      msg('Erro', "Usuário ou Senha Inválidos");
      return false;
    }
  }

  setUser(User? user) {
    context.read<AuthBloc>().add(CurrentUser(user!));
  }

  goHome() {
    Navigator.of(context).pushReplacementNamed(HomePage.routeName);
  }

  bool validate() {
    bool retorno = true;
    final state = context.read<AuthBloc>().state;
    if (state.email.isEmpty) {
      retorno = false;
    }
    if (state.password.isEmpty) {
      retorno = false;
    }

    return retorno;
  }

  msg(String title, String text) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(title),
            content: Text(text),
            actions: <Widget>[
              // define os botões na base do dialogo
              TextButton(
                  child: const Text("OK"),
                  onPressed: () => Navigator.of(context).pop()),
            ],
          );
        });
  }
}
