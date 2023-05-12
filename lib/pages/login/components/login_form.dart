import 'package:delivery_thiago/config/size_config.dart';
import 'package:delivery_thiago/global_components/default_buttom.dart';
import 'package:delivery_thiago/pages/login/components/login_email_field.dart';
import 'package:delivery_thiago/pages/login/components/login_password_field.dart';
import 'package:delivery_thiago/pages/login/controller/login_controller.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = LoginController(context: context);
    return Form(
      child: Column(
        children: [
          const LoginEmailField(),
          SizedBox(height: getProportionateScreenHeight(20)),
          const LoginPasswordField(),
          SizedBox(height: getProportionateScreenHeight(20)),
          Row(
            children: [
              const Spacer(),
              GestureDetector(
                onTap: () => {},
                child: const Text(
                  "Esqueceu a senha?",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              )
            ],
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          DefaultButton(text: "Login", press: () => controller.login()),
        ],
      ),
    );
  }
}
