import 'dart:convert';

class UserModel {
  UserModel({
    this.photoUrl,
    required this.name,
  });
  final String? photoUrl;
  final String name;

  UserModel copyWith({
    String? photoUrl,
    String? name,
  }) {
    return UserModel(
      photoUrl: photoUrl ?? this.photoUrl,
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'photoUrl': photoUrl,
      'name': name,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      photoUrl: map['photoUrl'],
      name: map['name'],
    );
  }

  String toJson() => jsonEncode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(jsonDecode(source));

  @override
  String toString() => 'UserModel(photoUrl: $photoUrl, name: $name)';
}
