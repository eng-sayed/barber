// ignore_for_file: file_names

import 'package:barber/shared/elements/background_container.dart';
import 'package:barber/shared/elements/duration_picker.dart';
import 'package:barber/shared/elements/textfield.dart';
import 'package:barber/shared/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_picker/Picker.dart';

class AddServices extends StatefulWidget {
  AddServices({Key? key}) : super(key: key);

  @override
  _AddServicesState createState() => _AddServicesState();
}

class _AddServicesState extends State<AddServices> {
  GlobalKey<ScaffoldState> scaffoldkey = GlobalKey<ScaffoldState>();
  TextEditingController test = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BackgroundContainer(
        child: Scaffold(
      key: scaffoldkey,
      backgroundColor: Colors.transparent,
      body: Column(
        children: <Widget>[
          IconButton(
            onPressed: () {
              scaffoldkey.currentState!.showBottomSheet(
                  (context) => Container(
                        height: 300.h,
                        child: Card(
                          color: Colors.white24,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                LoginTextField(
                                    controller: TextEditingController(),
                                    keyboardType: TextInputType.name,
                                    label: "name",
                                    validate: (w) {}),
                                LoginTextField(
                                    controller: TextEditingController(),
                                    keyboardType: TextInputType.number,
                                    label: "price",
                                    validate: (s) {}),
                                LoginTextField(
                                  controller: test,
                                  keyboardType: TextInputType.name,
                                  label: "duration",
                                  validate: (s) {},
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      durationPicker(test.text)
                                          .showDialog(context)
                                          .then((value) => test.text =
                                              "${value![0]}:${value[1]} ");
                                      setState(() {});
                                    },
                                    icon: Icon(
                                      Icons.timer,
                                      color: Colors.white,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                  backgroundColor: Colors.transparent);
            },
            icon: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                Card(
                  color: Colors.white60,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(Icons.cut),
                          title: Text("Hair cut"),
                          subtitle: Text("Price : 50 EGP"),
                        ),
                        Text("Duration 1 hour")
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
