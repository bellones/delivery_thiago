import 'package:delivery_thiago/models/loja_model.dart';

class TipoModel {
  final String id;
  String nome;
  List<LojaModel>? list;

  TipoModel({
    this.id = '',
    this.nome = '',
    this.list = const <LojaModel>[],
  });

  Map<String, dynamic> toMap() {
    return {'id': id, 'nome': nome, 'list': list};
  }

  factory TipoModel.fromMap(Map<String, dynamic> map) {
    return TipoModel(
      id: map['id'],
      nome: map['nome'],
    );
  }

  factory TipoModel.fromJson(Map<String, dynamic> map) {
    return TipoModel(id: map['id'], nome: map['nome']);
  }
}
