import 'package:delivery_thiago/config/size_config.dart';
import 'package:delivery_thiago/pages/home/components/banner/banner_list_item.dart';
import 'package:delivery_thiago/pages/home/components/banner/bloc/banner_bloc.dart';
import 'package:delivery_thiago/pages/home/controller/bannner_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shimmer/flutter_shimmer.dart';

class BannerList extends StatelessWidget {
  const BannerList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = BannerController(context: context);

    return FutureBuilder(
      future: controller.getBanner(),
      builder: (context, snapshot) {
        return Container(
          height: 128,
          margin: const EdgeInsets.only(left: 8),
          width: SizeConfig.screenWidth,
          child: BlocBuilder<BannerBloc, BannerState>(
            builder: (context, state) {
              return Visibility(
                  replacement: const ListTileShimmer(),
                  visible: state.list.isNotEmpty,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: state.list.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        var banner = state.list[index];
                        return BannerListItem(banner: banner);
                      }));
            },
          ),
        );
      },
    );
  }
}
