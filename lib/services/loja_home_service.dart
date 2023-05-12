import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:delivery_thiago/models/loja_model.dart';
import 'package:delivery_thiago/models/tipo_model.dart';
import 'package:delivery_thiago/usecases/loja_home_usecase.dart';
import 'package:flutter/material.dart';

class LojaHomeService implements LojaHomeUseCase {
  @override
  Future<List<TipoModel>> getLojas() async {
    List<LojaModel> listLoja = [];
    List<TipoModel> listTipo = [];
    try {
      final lojas =
          await FirebaseFirestore.instance.collection('loja').limit(20).get();
      for (var loja in lojas.docs) {
        var lojaModel = LojaModel(
          banner: loja.data()['banner'],
          cnpj: loja.data()['cnpj'],
          foto: loja.data()['foto'],
          funcionamento: loja.data()['funcionamento'],
          id: loja.id,
          idtipo: loja.data()['idtipo'],
          nome: loja.data()['nome'],
        );
        listLoja.add(lojaModel);
      }
      if (listLoja.isNotEmpty) {
        try {
          final tipo =
              await FirebaseFirestore.instance.collection('tipo').get();
          for (var item in tipo.docs) {
            var tipoModel = TipoModel(
              id: item.id,
              nome: item.data()['nome'],
              list: listLoja
                  .where((element) => element.idtipo == item.id)
                  .toList(),
            );
            listTipo.add(tipoModel);
          }
        } catch (e) {
          debugPrint(e.toString());
        }
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    return listTipo;
  }
}
