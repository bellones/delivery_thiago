import 'package:delivery_thiago/models/tipo_model.dart';
import 'package:delivery_thiago/services/loja_home_service.dart';
import 'package:delivery_thiago/usecases/loja_home_usecase.dart';

class LojaHomeRepo implements LojaHomeUseCase {
  final service = LojaHomeService();

  @override
  Future<List<TipoModel>> getLojas() async {
    return service.getLojas();
  }
}
