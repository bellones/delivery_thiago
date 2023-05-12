import 'package:delivery_thiago/models/endereco_model.dart';
import 'package:delivery_thiago/pages/home/components/endereco/bloc/endereco_bloc.dart';
import 'package:delivery_thiago/respository/endereco_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EnderecoController {
  final BuildContext context;
  EnderecoController({required this.context});
  final enderecoRepo = EnderecoRepo();

  Future<List<EnderecoModel>> getEndereco() async {
    final list = await enderecoRepo.getEnderecos();
    if (list.isNotEmpty) {
      setList(list);
      setEndereco(list.first);
    }
    return list;
  }

  void setList(list) {
    context.read<EnderecoBloc>().add(EnderecoList(list));
  }

  void setEndereco(EnderecoModel end) {
    context.read<EnderecoBloc>().add(SelectEndereco(end));
    context.read<EnderecoBloc>().add(
        EnderecoPrincipalText('${end.local},${end.numero} ${end.complemento}'));
  }
}
