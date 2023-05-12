import 'package:delivery_thiago/models/categoria_model.dart';

abstract class CategoriaHomeUseCase {
  Future<List<CategoriaModel>> getCategorias() async {
    return [];
  }
}
