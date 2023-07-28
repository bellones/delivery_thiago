import 'package:delivery_thiago/models/categoria_model.dart';
import 'package:delivery_thiago/pages/search/bloc/search_bloc.dart';
import 'package:delivery_thiago/respository/search_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchCategoryController {
  final BuildContext context;
  final repo = SearchRepo();
  SearchCategoryController({required this.context});

  Future<void> getCategory() async {
    final list = await repo.getCategoria();
    if (list.isNotEmpty) {
      setList(list);
    }
  }

  void setList(List<CategoriaModel> list) {
    context.read<SearchBloc>().add(LoadCategoryList(list));
  }
}
