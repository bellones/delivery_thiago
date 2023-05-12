import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:delivery_thiago/models/banner_model.dart';
import 'package:delivery_thiago/usecases/banner_usecase.dart';
import 'package:flutter/material.dart';

class BannerSerice implements BannerUseCase {
  @override
  Future<List<BannerModel>> getBanner() async {
    List<BannerModel> list = [];
    try {
      final itens = await FirebaseFirestore.instance.collection('banner').get();
      for (var element in itens.docs) {
        var bannerModel = BannerModel(
          uuid: element.id,
          foto: element.data()['foto'],
          seguimento: element.data()['idsegmento'],
          tipo: element.data()['tipo'],
        );
        list.add(bannerModel);
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    return list;
  }
}
