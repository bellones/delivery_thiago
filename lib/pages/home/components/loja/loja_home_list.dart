import 'package:delivery_thiago/config/size_config.dart';
import 'package:delivery_thiago/pages/home/components/loja/bloc/loja_bloc.dart';
import 'package:delivery_thiago/pages/home/controller/lojas_home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shimmer/flutter_shimmer.dart';

import 'loja_home_list_item.dart';

class LojaHome extends StatelessWidget {
  const LojaHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = LojasHomeController(context: context);
    return FutureBuilder(
      future: controller.getLojas(),
      builder: (context, snapshot) {
        return Container(
          height: 360,
          margin: const EdgeInsets.only(left: 8),
          width: SizeConfig.screenWidth,
          child: BlocBuilder<LojaBloc, LojaState>(
            builder: (context, state) {
              return Visibility(
                replacement: const Column(
                  children: [ListTileShimmer(), ListTileShimmer()],
                ),
                visible: state.list.isNotEmpty,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: state.list.length,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      var loja = state.list[index];
                      return LojaHomeListItem(
                        item: loja,
                      );
                    }),
              );
            },
          ),
        );
      },
    );
  }
}
