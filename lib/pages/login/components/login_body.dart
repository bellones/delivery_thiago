import 'package:delivery_thiago/config/size_config.dart';
import 'package:delivery_thiago/global_components/no_account_text.dart';
import 'package:delivery_thiago/global_components/social_card.dart';
import 'package:delivery_thiago/pages/login/components/login_form.dart';
import 'package:flutter/material.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  "assets/images/logo.png",
                  width: getProportionateScreenWidth(200),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                Text(
                  "Bem vindo ao Vraa",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "Faça Login usando sua conta  \nou com suas redes sociais",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.06),
                const LoginForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.06),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocalCard(
                        icon: "assets/icon/google-icon.svg", press: () => {}),
                    SocalCard(
                      icon: "assets/icon/facebook-2.svg",
                      press: () {},
                    ),
                    SocalCard(
                      icon: "assets/icon/twitter.svg",
                      press: () {},
                    ),
                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(20)),
                const NoAccountText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
