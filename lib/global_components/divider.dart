import 'package:flutter/material.dart';

import '../config/size_config.dart';
class Dividever extends StatelessWidget {
  const Dividever({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        width: SizeConfig.screenWidth,
        height: getProportionateScreenHeight(2),
        color: Colors.black12,
      ),
    );
  }
}