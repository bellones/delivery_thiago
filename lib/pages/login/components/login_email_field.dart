import 'package:delivery_thiago/global_components/custom_surfix_icon.dart';
import 'package:delivery_thiago/pages/login/bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginEmailField extends StatelessWidget {
  const LoginEmailField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) =>
          context.read<AuthBloc>().add(EmailEvent(newValue!)),
      onChanged: (value) {
        context.read<AuthBloc>().add(EmailEvent(value));
      },
      validator: (value) {
        return null;
      },
      decoration: const InputDecoration(
        labelText: "Email",
        hintText: "Digite seu email",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icon/Mail.svg"),
      ),
    );
  }
}
