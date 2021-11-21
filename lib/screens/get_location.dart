import 'package:barber/screens/add_services.dart';
import 'package:barber/servies/map_servise/location.dart';
import 'package:barber/shared/elements/auth_button.dart';
import 'package:barber/shared/elements/background_container.dart';
import 'package:barber/shared/elements/get_location_map.dart';
import 'package:barber/shared/elements/navigator.dart';
import 'package:barber/shared/responsive.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GetLocation extends StatefulWidget {
  GetLocation({Key? key}) : super(key: key);

  @override
  _GetLocationState createState() => _GetLocationState();
}

class _GetLocationState extends State<GetLocation> {
  @override
  var x;
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BackgroundContainer(
      child: Container(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 30.0.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              MaterialButtonDesign(
                  pressed: () async {
                    x = await navigateWithPostion(
                      context: context,
                      route: GetLocationMap(),
                    );
                    setState(() {});
                  },
                  minWidth: 100.w,
                  color: Colors.white,
                  label: "Add the store location"),
              SizedBox(
                height: 18.h,
              ),
              x == null
                  ? Icon(
                      Icons.location_on,
                      size: 100.fs,
                      color: Colors.white70,
                    )
                  : Container(
                      height: 200.h,
                      width: double.infinity,
                      child: GoogleMap(
                          markers: {
                            Marker(markerId: MarkerId("location"), position: x)
                          },
                          initialCameraPosition:
                              CameraPosition(target: x, zoom: 15)),
                    ),
              Spacer(),
              x == null
                  ? SizedBox()
                  : MaterialButtonDesign(
                      pressed: () async {
                        x = await navigateWithPostion(
                          context: context,
                          route: AddServices(),
                        );
                      },
                      minWidth: 100.w,
                      color: Colors.white,
                      label: "Next"),
              SizedBox(
                height: 18.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
