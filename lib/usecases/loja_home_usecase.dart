import 'package:delivery_thiago/models/tipo_model.dart';

abstract class LojaHomeUseCase {
  Future<List<TipoModel>> getLojas() async {
    return [];
  }
}
