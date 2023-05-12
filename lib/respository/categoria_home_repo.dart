import 'package:delivery_thiago/models/categoria_model.dart';
import 'package:delivery_thiago/services/categoria_home_servive.dart';
import 'package:delivery_thiago/usecases/categoria_home_usecase.dart';

class CategoriaHomeRepo implements CategoriaHomeUseCase {
  final service = CategoriaHomeService();
  @override
  Future<List<CategoriaModel>> getCategorias() async {
    return service.getCategorias();
  }
}
