import 'package:delivery_thiago/config/enums.dart';
import 'package:delivery_thiago/config/size_config.dart';
import 'package:delivery_thiago/global_components/bottom_nav_bar.dart';
import 'package:delivery_thiago/pages/search/components/search_body.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  static String routeName = "/search";
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      body: SearchBody(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.search),
    );
  }
}
