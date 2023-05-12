class LojaModel {
  final String id;
  String foto, banner, funcionamento, idtipo, nome, cnpj;
  LojaModel({
    this.id = '',
    this.banner = '',
    this.foto = '',
    this.cnpj = '',
    this.funcionamento = '',
    this.idtipo = '',
    this.nome = '',
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'banner': banner,
      'foto': foto,
      'cnpj': cnpj,
      'funcionamento': funcionamento,
      'idtipo': idtipo,
      'nome': nome,
    };
  }

  factory LojaModel.fromMap(Map<String, dynamic> map) {
    return LojaModel(
        banner: map['banner'],
        cnpj: map['cnpj'],
        foto: map['foto'],
        funcionamento: map['funcionamento'],
        id: map['id'],
        idtipo: map['idtipo'],
        nome: map['nome']);
  }

  factory LojaModel.fromJson(Map<String, dynamic> map) {
    return LojaModel(
        banner: map['banner'],
        cnpj: map['cnpj'],
        foto: map['foto'],
        funcionamento: map['funcionamento'],
        id: map['id'],
        idtipo: map['idtipo'],
        nome: map['nome']);
  }
}
