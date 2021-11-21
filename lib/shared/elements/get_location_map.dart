import 'package:barber/servies/map_servise/location.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GetLocationMap extends StatefulWidget {
  GetLocationMap({Key? key}) : super(key: key);

  @override
  _GetLocationMapState createState() => _GetLocationMapState();
}

class _GetLocationMapState extends State<GetLocationMap> {
  late Position position;
  Set<Marker> marker = {};
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Position>(
        future: determinePosition(),
        builder: (context, position) {
          return Scaffold(
            body: SafeArea(
              child: position.hasData
                  ? GoogleMap(
                      markers: marker,
                      onTap: (pos) {
                        setState(() {
                          marker = {
                            Marker(
                                markerId: MarkerId("location"),
                                position: LatLng(pos.latitude, pos.longitude))
                          };
                        });
                        Navigator.of(context).pop(pos);
                      },
                      initialCameraPosition: CameraPosition(
                          target: LatLng(position.data!.latitude,
                              position.data!.longitude),
                          zoom: 15))
                  : LinearProgressIndicator(),
            ),
          );
        });
    ;
  }
}
