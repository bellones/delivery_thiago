import 'package:delivery_thiago/pages/home/components/endereco/bloc/endereco_bloc.dart';
import 'package:delivery_thiago/pages/home/components/endereco/endereco_principal.dart';
import 'package:delivery_thiago/pages/home/components/endereco/modal_endereco.dart';
import 'package:delivery_thiago/pages/home/controller/endereco_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shimmer/flutter_shimmer.dart';

class SelectEndereco extends StatelessWidget {
  const SelectEndereco({Key? key}) : super(key: key);

  _showModal(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (ctx) {
          return const ModalEndereco();
        });
  }

  @override
  Widget build(BuildContext context) {
    final controller = EnderecoController(context: context);
    return FutureBuilder(
        future: controller.getEndereco(),
        builder: (context, snapshot) {
          return BlocBuilder<EnderecoBloc, EnderecoState>(
              builder: (context, state) {
            return Visibility(
              replacement: const ListTileShimmer(),
              visible: state.list.isNotEmpty,
              child: EnderecoPrincipal(
                endereco: '${state.end}',
                showModal: _showModal,
                itensCarrinho: 0,
              ),
            );
          });
        });
  }
}
