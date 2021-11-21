import 'dart:convert';

import 'package:barber/helpers/helpers.dart';

class Service {
  String? name;
  String? price;
  Duration? duration;

  Service({
    this.name,
    this.price,
    this.duration,
  });

  Service copyWith({
    String? name,
    String? price,
    Duration? duration,
  }) {
    return Service(
      name: name ?? this.name,
      price: price ?? this.price,
      duration: duration ?? this.duration,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'price': price,
      'duration': duration.toString(),
    };
  }

  factory Service.fromMap(Map<String, dynamic> map) {
    return Service(
      name: map['name'] != null ? map['name'] : null,
      price: map['price'] != null ? map['price'] : null,
      duration: map['duration'] != null ? parseDuration(map['duration']) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Service.fromJson(String source) =>
      Service.fromMap(json.decode(source));
}
