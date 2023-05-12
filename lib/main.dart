import 'package:delivery_thiago/config/routes.dart';
import 'package:delivery_thiago/config/theme.dart';
import 'package:delivery_thiago/pages/home/components/categoria/bloc/categoria_home_bloc.dart';
import 'package:delivery_thiago/pages/home/components/loja/bloc/loja_bloc.dart';
import 'package:delivery_thiago/pages/home/components/promocao/bloc/promocao_home_bloc.dart';
import 'package:delivery_thiago/pages/home/home_page.dart';
import 'package:delivery_thiago/pages/login/bloc/auth_bloc.dart';
import 'package:delivery_thiago/pages/login/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'pages/home/components/banner/bloc/banner_bloc.dart';
import 'pages/home/components/endereco/bloc/endereco_bloc.dart';

User? user;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  user = FirebaseAuth.instance.currentUser;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
      statusBarBrightness: Brightness.light,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => AuthBloc(),
          ),
          BlocProvider(
            create: (context) => BannerBloc(),
          ),
          BlocProvider(
            create: (context) => EnderecoBloc(),
          ),
          BlocProvider(
            create: (context) => LojaBloc(),
          ),
          BlocProvider(
            create: (context) => PromocaoHomeBloc(),
          ),
          BlocProvider(
            create: (context) => CategoriaHomeBloc(),
          ),
        ],
        child: MaterialApp(
          title: 'Delivery App using Bloc',
          debugShowCheckedModeBanner: false,
          theme: theme(),
          initialRoute: user != null ? HomePage.routeName : LoginPage.routeName,
          routes: routes,
        ));
  }
}
