import 'package:delivery_thiago/models/produto_model.dart';
import 'package:delivery_thiago/pages/home/components/promocao/bloc/promocao_home_bloc.dart';
import 'package:delivery_thiago/respository/promocao_home_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PromocaoHomeController {
  final BuildContext context;
  PromocaoHomeController({required this.context});
  final promoRepo = PromocaoRepo();

  Future<List<ProdutoModel>> getPromocao() async {
    final list = await promoRepo.getPromocao();
    if (list.isNotEmpty) {
      setList(list);
    }

    loading(false);

    return list;
  }

  void loading(bool load) {
    context.read<PromocaoHomeBloc>().add(PromocaoHomeLoading(load));
  }

  void setList(list) {
    context.read<PromocaoHomeBloc>().add(PromocaoHomeList(list));
  }
}
