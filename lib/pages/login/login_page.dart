import 'package:delivery_thiago/config/size_config.dart';
import 'package:delivery_thiago/pages/login/components/login_body.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
  static String routeName = "/login";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      body: LoginBody(),
    );
  }
}
