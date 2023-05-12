import 'package:delivery_thiago/models/endereco_model.dart';

abstract class EnderecoUseCase {
  Future<List<EnderecoModel>> getEnderecos() async {
    return [];
  }
}
