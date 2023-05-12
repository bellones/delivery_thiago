import 'package:delivery_thiago/models/produto_model.dart';
import 'package:delivery_thiago/services/promocao_home_service.dart';
import 'package:delivery_thiago/usecases/promocao_home_usecase.dart';

class PromocaoRepo implements PromocaoHomeUsecase {
  final service = PromocaoHomeService();
  @override
  Future<List<ProdutoModel>> getPromocao() async {
    return service.getPromocao();
  }
}
