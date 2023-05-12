import 'package:delivery_thiago/models/categoria_model.dart';
import 'package:delivery_thiago/pages/home/components/categoria/bloc/categoria_home_bloc.dart';
import 'package:delivery_thiago/respository/categoria_home_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoriaHomeController {
  final BuildContext context;
  CategoriaHomeController({required this.context});
  final repo = CategoriaHomeRepo();

  Future<List<CategoriaModel>> getCategorias() async {
    final list = await repo.getCategorias();
    if (list.isNotEmpty) {
      setList(list);
    }

    loading(false);

    return list;
  }

  void loading(bool load) {
    context.read<CategoriaHomeBloc>().add(CategoriaHomeLoading(load));
  }

  void setList(list) {
    context.read<CategoriaHomeBloc>().add(CategoriaHomeList(list));
  }
}
