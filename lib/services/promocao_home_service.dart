import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:delivery_thiago/models/produto_model.dart';
import 'package:delivery_thiago/usecases/promocao_home_usecase.dart';
import 'package:flutter/material.dart';

class PromocaoHomeService implements PromocaoHomeUsecase {
  @override
  Future<List<ProdutoModel>> getPromocao() async {
    List<ProdutoModel> list = [];
    try {
      var itens = await FirebaseFirestore.instance
          .collection('produto')
          .where("promocao", isEqualTo: true)
          .limit(20)
          .get();

      for (var item in itens.docs) {
        var produtoModel = ProdutoModel(
          id: item.id,
          nome: item.data()["nome"],
          desconto: item.data()["desconto"],
          estoque: item.data()["estoque"],
          foto: item.data()["foto"],
          idcategoria: item.data()["idcategoria"],
          idloja: item.data()["idloja"],
          pagamento: item.data()["pagamento"],
          promocao: item.data()["promocao"],
          usaDesconto: item.data()["usaDesconto"],
          usaEstoque: item.data()["usaEstoque"],
          valor: item.data()['valor'],
        );
        list.add(produtoModel);
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    return list;
  }
}
