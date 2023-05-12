import 'package:delivery_thiago/config/size_config.dart';
import 'package:delivery_thiago/pages/home/components/promocao/bloc/promocao_home_bloc.dart';
import 'package:delivery_thiago/pages/home/components/promocao/promocao_list_item.dart';
import 'package:delivery_thiago/pages/home/controller/promocao_home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shimmer/flutter_shimmer.dart';
import 'package:flutter_svg/svg.dart';

class PromocaoList extends StatelessWidget {
  const PromocaoList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = PromocaoHomeController(context: context);
    return FutureBuilder(
      future: controller.getPromocao(),
      builder: (context, snapshot) {
        return BlocBuilder<PromocaoHomeBloc, PromocaoHomeState>(
          builder: (context, state) {
            return Visibility(
              visible: state.list.isNotEmpty,
              replacement: const ListTileShimmer(),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Promoções",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                        ),
                        Row(
                          children: [
                            TextButton(
                              onPressed: () => {},
                              child: const Text("Ver Mais",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)),
                            ),
                            Container(
                                margin: const EdgeInsets.fromLTRB(0, 12, 0, 8),
                                child: SvgPicture.asset(
                                  "assets/icon/seta.svg",
                                  width: 6,
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: SizeConfig.screenWidth,
                    height: 200,
                    margin: const EdgeInsets.only(left: 8),
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: state.list.length,
                        itemBuilder: (context, index) {
                          var produto = state.list[index];
                          return PromocaoListItem(
                            item: produto,
                          );
                        }),
                  )
                ],
              ),
            );
          },
        );
      },
    );
  }
}
