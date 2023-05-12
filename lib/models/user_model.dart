class User {
  final String uid;
  String token;
  String displayName;
  String email;
  String locale;
  String phoneNumber;
  String photoUrl;

  User({
    this.uid = "",
    this.token = "",
    this.displayName = "",
    this.email = "",
    this.locale = "",
    this.phoneNumber = "",
    this.photoUrl = "",
  });
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'FCMToken': token,
      'displayName': displayName,
      'email': email,
      'locale': locale,
      'phoneNumber': phoneNumber,
      'photoUrl': photoUrl,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      uid: map['uid'],
      token: map['FCMToken'],
      displayName: map['displayName'],
      email: map['email'],
      locale: map['locale'],
      phoneNumber: map['phoneNumber'],
      photoUrl: map['photoUrl'],
    );
  }

  factory User.fromJson(Map<String, dynamic> map) {
    return User(
      uid: map['uid'],
      token: map['FCMToken'],
      displayName: map['displayName'],
      email: map['email'],
      locale: map['locale'],
      phoneNumber: map['phoneNumber'],
      photoUrl: map['photoUrl'],
    );
  }
}
