import 'package:delivery_thiago/models/produto_model.dart';

class CategoriaModel {
  final String id;
  String titulo, subtitulo, foto;
  List<ProdutoModel> list;
  CategoriaModel(
      {this.foto = '',
      this.id = '',
      this.subtitulo = '',
      this.titulo = '',
      this.list = const []});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'foto': foto,
      'titulo': titulo,
      'subtitulo': subtitulo,
      'list': list
    };
  }

  factory CategoriaModel.fromMap(Map<String, dynamic> map) {
    return CategoriaModel(
        foto: map['foto'],
        titulo: map['titulo'],
        subtitulo: map['subtitulo'],
        id: map['id']);
  }

  factory CategoriaModel.fromJson(Map<String, dynamic> map) {
    return CategoriaModel(
        foto: map['foto'],
        titulo: map['titulo'],
        subtitulo: map['subtitulo'],
        id: map['id']);
  }
}
