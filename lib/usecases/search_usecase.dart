import 'package:delivery_thiago/models/categoria_model.dart';
import 'package:delivery_thiago/models/loja_model.dart';
import 'package:delivery_thiago/models/produto_model.dart';

abstract class SearchUseCase {
  Future<List<CategoriaModel>> getCategoria() async {
    return [];
  }

  Future<List<ProdutoModel>> getProduto(String busca) async {
    return [];
  }

  Future<List<LojaModel>> getLoja(String busca) async {
    return [];
  }
}
