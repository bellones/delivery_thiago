import 'package:delivery_thiago/models/produto_model.dart';

abstract class PromocaoHomeUsecase {
  Future<List<ProdutoModel>> getPromocao() async {
    return [];
  }
}
