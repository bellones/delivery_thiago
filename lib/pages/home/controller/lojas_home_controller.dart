import 'package:delivery_thiago/models/tipo_model.dart';
import 'package:delivery_thiago/pages/home/components/loja/bloc/loja_bloc.dart';
import 'package:delivery_thiago/respository/loja_home_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LojasHomeController {
  final BuildContext context;
  final lojaHomeRepo = LojaHomeRepo();
  LojasHomeController({required this.context});

  Future<List<TipoModel>> getLojas() async {
    final list = await lojaHomeRepo.getLojas();
    if (list.isNotEmpty) {
      setList(list);
    }

    setLoading(false);

    return list;
  }

  void setLoading(bool load) {
    context.read<LojaBloc>().add(LojaLoading(load));
  }

  void setList(list) {
    context.read<LojaBloc>().add(LojaList(list));
  }
}
