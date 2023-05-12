import 'package:delivery_thiago/global_components/custom_surfix_icon.dart';
import 'package:delivery_thiago/pages/login/bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPasswordField extends StatelessWidget {
  const LoginPasswordField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) =>
          context.read<AuthBloc>().add(PasswordEvent(newValue!)),
      onChanged: (value) {
        context.read<AuthBloc>().add(PasswordEvent(value));
      },
      validator: (value) {
        return null;
      },
      decoration: const InputDecoration(
        labelText: "Senha",
        hintText: "Digite sua senha",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icon/Lock.svg"),
      ),
    );
  }
}
