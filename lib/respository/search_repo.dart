import 'package:delivery_thiago/models/categoria_model.dart';
import 'package:delivery_thiago/models/loja_model.dart';
import 'package:delivery_thiago/models/produto_model.dart';
import 'package:delivery_thiago/services/search_service.dart';
import 'package:delivery_thiago/usecases/search_usecase.dart';

class SearchRepo implements SearchUseCase {
  final searchService = SearchService();

  @override
  Future<List<CategoriaModel>> getCategoria() async {
    return searchService.getCategoria();
  }

  @override
  Future<List<LojaModel>> getLoja(String busca) async {
    return searchService.getLoja(busca);
  }

  @override
  Future<List<ProdutoModel>> getProduto(String busca) async {
    return searchService.getProduto(busca);
  }
}
