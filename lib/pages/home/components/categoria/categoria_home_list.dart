import 'package:delivery_thiago/config/size_config.dart';
import 'package:delivery_thiago/pages/home/components/categoria/bloc/categoria_home_bloc.dart';
import 'package:delivery_thiago/pages/home/components/categoria/categoria_home_list_item.dart';
import 'package:delivery_thiago/pages/home/controller/categoria_home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shimmer/flutter_shimmer.dart';

class CategoriaHome extends StatelessWidget {
  const CategoriaHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = CategoriaHomeController(context: context);
    return FutureBuilder(
      future: controller.getCategorias(),
      builder: (context, snapshot) {
        return Container(
          height: 520,
          margin: const EdgeInsets.only(left: 8),
          width: SizeConfig.screenWidth,
          child: BlocBuilder<CategoriaHomeBloc, CategoriaHomeState>(
            builder: (context, state) {
              return Visibility(
                replacement: const Column(
                  children: [
                    ListTileShimmer(),
                    ListTileShimmer(),
                    ListTileShimmer(),
                  ],
                ),
                visible: state.list.isNotEmpty,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: state.list.length,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      var loja = state.list[index];
                      return CategoriaListItem(
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
