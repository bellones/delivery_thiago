import 'package:delivery_thiago/models/endereco_model.dart';
import 'package:delivery_thiago/services/endereco_service.dart';
import 'package:delivery_thiago/usecases/endereco_usecase.dart';

class EnderecoRepo implements EnderecoUseCase {
  final enderecoService = EnderecoService();

  @override
  Future<List<EnderecoModel>> getEnderecos() async {
    return await enderecoService.getEnderecos();
  }
}
