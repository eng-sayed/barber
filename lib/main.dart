import 'package:barber/screens/home.dart';
import 'package:barber/screens/login.dart';
import 'package:barber/screens/register.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        'register': (context) => Register(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        'login': (context) => Login(),
        'home': (context) => Home(),
      },
    );
  }
}
