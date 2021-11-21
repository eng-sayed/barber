import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

// ignore: non_constant_identifier_names
void navigate({required BuildContext context, required Widget route}) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => route),
  );
}

Future<LatLng?> navigateWithPostion({
  required BuildContext context,
  required Widget route,
}) {
  return Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => route),
  );
}
