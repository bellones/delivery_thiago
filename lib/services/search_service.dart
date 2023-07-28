import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:delivery_thiago/models/categoria_model.dart';
import 'package:delivery_thiago/models/loja_model.dart';
import 'package:delivery_thiago/models/produto_model.dart';
import 'package:delivery_thiago/usecases/search_usecase.dart';
import 'package:flutter/material.dart';

class SearchService implements SearchUseCase {
  @override
  Future<List<CategoriaModel>> getCategoria() async {
    List<CategoriaModel> list = [];

    try {
      var categories =
          await FirebaseFirestore.instance.collection('categoria').get();

      for (var category in categories.docs) {
        var categoriaModel = CategoriaModel(
          foto: category.data()['foto'],
          id: category.id,
          subtitulo: category.data()['subtitulo'],
          titulo: category.data()['titulo'],
          list: [],
        );
        list.add(categoriaModel);
      }
    } catch (e) {
      debugPrint(e.toString());
    }

    return list;
  }

  @override
  Future<List<LojaModel>> getLoja(String busca) async {
    List<LojaModel> listLoja = [];

    try {
      final lojas = await FirebaseFirestore.instance.collection('loja').get();
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
    } catch (e) {
      debugPrint(e.toString());
    }

    return listLoja
        .where((element) => element.nome.toLowerCase().contains(busca))
        .toList();
  }

  @override
  Future<List<ProdutoModel>> getProduto(String busca) async {
    List<ProdutoModel> list = [];
    try {
      var itens = await FirebaseFirestore.instance.collection('produto').get();

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
    return list
        .where((element) => element.nome.toLowerCase().contains(busca))
        .toList();
  }
}
