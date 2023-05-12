class Localizacao {
  double latitude, longitude;
  Localizacao({this.latitude = 0.0, this.longitude = 0.0});

  Map<String, dynamic> toMap() {
    return {
      'latitude': latitude,
      'longitude': longitude,
    };
  }

  factory Localizacao.fromMap(Map<String, dynamic> map) {
    return Localizacao(
      latitude: map['latitude'],
      longitude: map['longitude'],
    );
  }

  factory Localizacao.fromJson(Map<String, dynamic> map) {
    return Localizacao(
      latitude: map['latitude'],
      longitude: map['longitude'],
    );
  }
}
