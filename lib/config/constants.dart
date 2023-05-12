import 'package:flutter/material.dart';

import 'size_config.dart';

const kPrimaryColor = Color(0xFF0089FF);
const kOrange = Color.fromRGBO(255, 61, 61, 1);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFF0089FF), Color(0xFF434CFF)],
);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);

const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

const defaultDuration = Duration(milliseconds: 250);

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Por favor insira seu email";
const String kInvalidEmailError = "Insira um email válido";
const String kPassNullError = "Por favor insira sua senha";
const String kShortPassError =
    "senha muito curta, a senha deve ter mais de 6 caracteres";
const String kMatchPassError = "As senhas não são iguais";
const String kNamelNullError = "Insira seu nome";
const String kPhoneNumberNullError = "Insira seu celular";
const String kAddressNullError = "Digite seu endereço";
const String kConfirmPassEmpty = "Por favor confime sua senha";
const String kConfirmPassDontMatch = "Senhas não conferem";

final otpInputDecoration = InputDecoration(
  contentPadding:
      EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
    borderSide: const BorderSide(color: kTextColor),
  );
}

const agoraAppId = "0ccd18dac1af44ecbecac391a1a14db9";
const agoraToken =
    "0060ccd18dac1af44ecbecac391a1a14db9IACMZlRk+hpOvxPMgHqsuyPc40IKJR0JeMVq7xGxyVfus4MbD/QAAAAAEACXaa56RG6GYgEAAQBEboZi";
