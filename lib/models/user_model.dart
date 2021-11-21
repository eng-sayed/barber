import 'dart:convert';

class User {
  String? name;
  String? pass;
  String? phoneNumber;
  String? email;
  User({
    this.name,
    this.pass,
    this.phoneNumber,
    this.email,
  });

  User copyWith({
    String? name,
    String? pass,
    String? phoneNumber,
    String? email,
  }) {
    return User(
      name: name ?? this.name,
      pass: pass ?? this.pass,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      email: email ?? this.email,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'pass': pass,
      'phoneNumber': phoneNumber,
      'email': email,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      name: map['name'] != null ? map['name'] : null,
      pass: map['pass'] != null ? map['pass'] : null,
      phoneNumber: map['phoneNumber'] != null ? map['phoneNumber'] : null,
      email: map['email'] != null ? map['email'] : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));
}
