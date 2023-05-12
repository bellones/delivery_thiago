import 'package:delivery_thiago/pages/home/components/banner/bloc/banner_bloc.dart';
import 'package:delivery_thiago/pages/home/components/categoria/bloc/categoria_home_bloc.dart';
import 'package:delivery_thiago/pages/home/components/endereco/bloc/endereco_bloc.dart';
import 'package:delivery_thiago/pages/home/components/loja/bloc/loja_bloc.dart';
import 'package:delivery_thiago/pages/home/components/promocao/bloc/promocao_home_bloc.dart';
import 'package:delivery_thiago/pages/login/bloc/auth_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Providers {
  static List<BlocProvider> getProviders() {
    return <BlocProvider>[
      BlocProvider(
        create: (_) => AuthBloc(),
      ),
      BlocProvider(
        create: (_) => BannerBloc(),
      ),
      BlocProvider(
        create: (_) => EnderecoBloc(),
      ),
      BlocProvider(
        create: (_) => LojaBloc(),
      ),
      BlocProvider(
        create: (_) => PromocaoHomeBloc(),
      ),
      BlocProvider(
        create: (_) => CategoriaHomeBloc(),
      ),
    ];
  }
}
