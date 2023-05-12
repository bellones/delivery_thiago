import 'package:delivery_thiago/models/banner_model.dart';
import 'package:delivery_thiago/pages/home/components/banner/bloc/banner_bloc.dart';
import 'package:delivery_thiago/respository/banner_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BannerController {
  final BuildContext context;
  BannerController({required this.context});
  final bannerRepo = BannerRepo();

  Future<List<BannerModel>> getBanner() async {
    final list = await bannerRepo.getBanner();
    if (list.isNotEmpty) {
      setList(list);
    }

    loading(false);

    return list;
  }

  void loading(bool load) {
    context.read<BannerBloc>().add(BannerLoading(load));
  }

  void setList(list) {
    context.read<BannerBloc>().add(BannerList(list));
  }
}
