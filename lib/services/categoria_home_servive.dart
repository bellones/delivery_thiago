import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:delivery_thiago/models/categoria_model.dart';
import 'package:delivery_thiago/models/produto_model.dart';
import 'package:delivery_thiago/usecases/categoria_home_usecase.dart';
import 'package:flutter/widgets.dart';

class CategoriaHomeService implements CategoriaHomeUseCase {
  @override
  Future<List<CategoriaModel>> getCategorias() async {
    List<CategoriaModel> list = [];

    try {
      var categories = await FirebaseFirestore.instance
          .collection('categoria')
          .limit(3)
          .get();

      for (var category in categories.docs) {
        var categoriaModel = CategoriaModel(
          foto: category.data()['foto'],
          id: category.id,
          subtitulo: category.data()['subtitulo'],
          titulo: category.data()['titulo'],
        );
        if (categoriaModel.id.isNotEmpty) {
          try {
            var produtos = await FirebaseFirestore.instance
                .collection('produto')
                .where('idcategoria', isEqualTo: categoriaModel.id)
                .get();
            var produtoList = <ProdutoModel>[];
            for (var item in produtos.docs) {
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
              produtoList.add(produtoModel);
            }
            categoriaModel.list = produtoList;
            produtoList = [];
          } catch (e) {
            debugPrint(e.toString());
          }
        }
        list.add(categoriaModel);
      }
    } catch (e) {
      debugPrint(e.toString());
    }

    return list;
  }
}
