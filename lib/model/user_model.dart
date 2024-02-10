class UserModel {
  final String name;
  final String email;
  final String createdAt;
  final String phoneNumber;
  final String uid;

  UserModel({
    required this.name,
    required this.email,
    required this.createdAt,
    required this.phoneNumber,
    required this.uid,
  });

  //from Map
  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
        name: map["name"] ?? '',
        email: map["email"] ?? '',
        createdAt: map["createdAt"] ?? '',
        phoneNumber: map["PhoneNumber"] ?? '',
        uid: map["uid"] ?? '');
  }

  //to Map
  Map<String, dynamic> toMap() {
    return {
      "name": name,
      "email": email,
      "createdAt": createdAt,
      "phonenumber": phoneNumber,
      "uid": uid
    };
  }
}
