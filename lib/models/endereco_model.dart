import 'package:delivery_thiago/models/localizaco_model.dart';

class EnderecoModel {
  final String uuid;
  String local, bairro, numero, estado, cidade, complemento, userId;
  Localizacao? localizacao;
  EnderecoModel({
    this.uuid = '',
    this.local = '',
    this.bairro = '',
    this.cidade = '',
    this.estado = '',
    this.numero = '',
    this.userId = '',
    this.complemento = '',
    this.localizacao,
  });

  Map<String, dynamic> toMap() {
    return {
      'uuid': uuid,
      'local': local,
      'bairro': bairro,
      'cidade': cidade,
      'numero': numero,
      'userId': userId,
      'complemento': complemento,
      'localizacao': localizacao,
    };
  }

  factory EnderecoModel.fromMap(Map<String, dynamic> map) {
    return EnderecoModel(
      uuid: map['uuid'],
      local: map['local'],
      bairro: map['bairro'],
      cidade: map['cidade'],
      numero: map['numero'],
      userId: map['userId'],
      complemento: map['complemento'],
      localizacao: map['localizacao'] != null
          ? Localizacao.fromJson(map['localizacao'])
          : null,
    );
  }

  factory EnderecoModel.fromJson(Map<String, dynamic> map) {
    return EnderecoModel(
      uuid: map['uuid'],
      local: map['local'],
      bairro: map['bairro'],
      cidade: map['cidade'],
      numero: map['numero'],
      userId: map['userId'],
      complemento: map['complemento'],
      localizacao: map['localizacao'] != null
          ? Localizacao.fromJson(map['localizacao'])
          : null,
    );
  }
}
