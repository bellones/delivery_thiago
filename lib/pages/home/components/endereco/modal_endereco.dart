import 'package:delivery_thiago/config/constants.dart';
import 'package:delivery_thiago/models/endereco_model.dart';
import 'package:delivery_thiago/pages/home/components/endereco/bloc/endereco_bloc.dart';
import 'package:delivery_thiago/pages/home/controller/endereco_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shimmer/flutter_shimmer.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ModalEndereco extends StatelessWidget {
  const ModalEndereco({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = EnderecoController(context: context);
    void setPricipal(EnderecoModel item) {
      controller.setEndereco(item);
      Navigator.of(context).pop();
    }

    return BlocBuilder<EnderecoBloc, EnderecoState>(
      builder: (context, state) {
        return Visibility(
          replacement: Column(
            children: const [
              ListTileShimmer(),
              ListTileShimmer(),
              ListTileShimmer()
            ],
          ),
          visible: state.list.isNotEmpty,
          child: SafeArea(
              child: ListView.builder(
                  itemCount: state.list.length,
                  itemBuilder: (context, index) {
                    var item = state.list[index];
                    return Container(
                      height: 72,
                      margin: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8)),
                          border: Border.all(
                              color: item.uuid == state.end?.uuid
                                  ? kPrimaryColor
                                  : Colors.grey)),
                      child: ListTile(
                        leading: item.uuid == state.end?.uuid
                            ? SvgPicture.asset(
                                "assets/icon/end_ativo.svg",
                                width: 24,
                              )
                            : SvgPicture.asset(
                                "assets/icon/end_inativo.svg",
                                width: 24,
                              ),
                        title: Text(
                          "${item.local}, ${item.numero}",
                          style: const TextStyle(
                              color: Colors.black, fontSize: 14),
                        ),
                        subtitle: item.complemento.isEmpty
                            ? (Text(
                                "${item.bairro} - ${item.cidade} - ${item.estado}",
                                style: const TextStyle(
                                    color: Colors.black, fontSize: 12)))
                            : (Text(
                                "${item.complemento} - ${item.bairro} - ${item.cidade} - ${item.estado}",
                                style: const TextStyle(
                                    color: Colors.black, fontSize: 12))),
                        onTap: () => {setPricipal(item)},
                        //trailing: IconButton(icon: const Icon(Icons.more_vert), onPressed: () {  },),
                      ),
                    );
                  })),
        );
      },
    );
  }
}
