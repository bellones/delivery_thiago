import 'package:delivery_thiago/pages/home/components/banner/banner_list.dart';
import 'package:delivery_thiago/pages/home/components/categoria/categoria_home_list.dart';
import 'package:delivery_thiago/pages/home/components/endereco/select_endereco.dart';
import 'package:delivery_thiago/pages/home/components/loja/loja_home_list.dart';
import 'package:delivery_thiago/pages/home/components/promocao/promocao_list.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: SingleChildScrollView(
          child: Column(
        children: [
          SelectEndereco(),
          BannerList(),
          LojaHome(),
          PromocaoList(),
          CategoriaHome(),
        ],
      )),
    );
  }
}
