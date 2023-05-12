import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:delivery_thiago/models/endereco_model.dart';
import 'package:delivery_thiago/usecases/endereco_usecase.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class EnderecoService implements EnderecoUseCase {
  @override
  Future<List<EnderecoModel>> getEnderecos() async {
    List<EnderecoModel> list = [];
    try {
      final itens = await FirebaseFirestore.instance
          .collection('endereco')
          .where("userid", isEqualTo: FirebaseAuth.instance.currentUser?.uid)
          .get();
      for (var element in itens.docs) {
        var item = EnderecoModel(
          bairro: element.data()['bairro'],
          cidade: element.data()['cidade'],
          estado: element.data()['estado'],
          local: element.data()['local'],
          numero: element.data()['numero'],
          userId: element.data()['userid'],
          uuid: element.id,
        );
        list.add(item);
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    return list;
  }
}
