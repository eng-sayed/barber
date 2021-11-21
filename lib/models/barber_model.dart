import 'dart:convert';

import 'package:google_maps_flutter/google_maps_flutter.dart';

class Barber {
  String? ownerName;
  String? pass;
  String? phoneNumber;
  String? email;
  LatLng? location;
  Barber({
    this.ownerName,
    this.pass,
    this.phoneNumber,
    this.email,
    this.location,
  });

  Map<String, dynamic> toMap() {
    return {
      'ownerName': ownerName,
      'pass': pass,
      'phoneNumber': phoneNumber,
      'email': email,
      'location': location?.toJson(),
    };
  }

  factory Barber.fromMap(Map<String, dynamic> map) {
    return Barber(
      ownerName: map['ownerName'] != null ? map['ownerName'] : null,
      pass: map['pass'] != null ? map['pass'] : null,
      phoneNumber: map['phoneNumber'] != null ? map['phoneNumber'] : null,
      email: map['email'] != null ? map['email'] : null,
      location:
          map['location'] != null ? LatLng.fromJson(map['location']) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Barber.fromJson(String source) => Barber.fromMap(json.decode(source));

  Barber copyWith({
    String? ownerName,
    String? pass,
    String? phoneNumber,
    String? email,
    LatLng? location,
  }) {
    return Barber(
      ownerName: ownerName ?? this.ownerName,
      pass: pass ?? this.pass,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      email: email ?? this.email,
      location: location ?? this.location,
    );
  }
}
