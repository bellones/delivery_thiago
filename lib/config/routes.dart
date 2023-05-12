import 'package:delivery_thiago/pages/home/home_page.dart';
import 'package:delivery_thiago/pages/login/login_page.dart';
import 'package:delivery_thiago/pages/search/search_page.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  LoginPage.routeName: (context) => const LoginPage(),
  HomePage.routeName: (context) => const HomePage(),
  SearchPage.routeName: (context) => const SearchPage(),
};
