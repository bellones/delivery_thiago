class BannerModel {
  final String uuid;
  String foto, seguimento, tipo;

  BannerModel(
      {this.uuid = '', this.foto = '', this.seguimento = '', this.tipo = ''});

  Map<String, dynamic> toMap() {
    return {'uuid': uuid, 'foto': foto, 'seguimento': seguimento, 'tipo': tipo};
  }

  factory BannerModel.fromMap(Map<String, dynamic> map) {
    return BannerModel(
        foto: map['foto'],
        seguimento: map['idseguimento'],
        tipo: map['tipo'],
        uuid: map['uuid']);
  }

  factory BannerModel.fromJson(Map<String, dynamic> map) {
    return BannerModel(
        foto: map['foto'],
        seguimento: map['idseguimento'],
        tipo: map['tipo'],
        uuid: map['uuid']);
  }
}
