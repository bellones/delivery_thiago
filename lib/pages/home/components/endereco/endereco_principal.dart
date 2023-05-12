import 'package:badges/badges.dart' as badges;
import 'package:delivery_thiago/config/size_config.dart';
import 'package:delivery_thiago/pages/home/components/endereco/bloc/endereco_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EnderecoPrincipal extends StatelessWidget {
  final String endereco;
  final int itensCarrinho;
  final Function(BuildContext) showModal;
  const EnderecoPrincipal(
      {Key? key,
      required this.endereco,
      required this.itensCarrinho,
      required this.showModal})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: Row(
          children: [
            GestureDetector(
              child: Stack(
                children: [
                  Container(
                      margin: const EdgeInsets.fromLTRB(8, 20, 12, 0),
                      child: SvgPicture.asset(
                        "assets/icon/end_ativo.svg",
                        width: 16,
                      )),
                  Container(
                    width: SizeConfig.screenWidth * 0.70,
                    margin: const EdgeInsets.fromLTRB(32, 12, 12, 0),
                    child: const Text(
                      "Entregar em :",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  Container(
                    width: SizeConfig.screenWidth * 0.70,
                    margin: const EdgeInsets.fromLTRB(32, 26, 12, 0),
                    child: BlocBuilder<EnderecoBloc, EnderecoState>(
                      builder: (context, state) {
                        return Text(
                          state.endPrincipal.length > 100
                              ? "${state.endPrincipal.substring(0, 100)}..."
                              : state.endPrincipal,
                          style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        );
                      },
                    ),
                  ),
                ],
              ),
              onTap: () => showModal(context),
            ),
            itensCarrinho == 0
                ? Padding(
                    padding: const EdgeInsets.only(left: 8, top: 12),
                    child: IconButton(
                      onPressed: (() => {}),
                      icon: SvgPicture.asset("assets/icon/icon_sacola.svg",
                          width: 24,
                          colorFilter: const ColorFilter.mode(
                              Colors.black, BlendMode.srcIn)),
                    ),
                  )
                : badges.Badge(
                    position: badges.BadgePosition.bottomEnd(),
                    badgeContent: Text(
                      itensCarrinho.toString(),
                      style: const TextStyle(color: Colors.white),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8, top: 12),
                      child: IconButton(
                        onPressed: (() => {}),
                        icon: SvgPicture.asset("assets/icon/icon_sacola.svg",
                            width: 24,
                            colorFilter: const ColorFilter.mode(
                                Colors.black, BlendMode.srcIn)),
                      ),
                    ),
                  ),
          ],
        ));
  }
}
