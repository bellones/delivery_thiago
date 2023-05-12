import 'package:delivery_thiago/config/enums.dart';
import 'package:delivery_thiago/config/size_config.dart';
import 'package:delivery_thiago/global_components/bottom_nav_bar.dart';
import 'package:delivery_thiago/pages/home/components/home_body.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      body: HomeBody(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
