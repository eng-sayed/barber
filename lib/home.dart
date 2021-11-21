import 'dart:ui';

import 'package:barber/login.dart';
import 'package:barber/register.dart';
import 'package:barber/shared/auth_button.dart';
import 'package:barber/shared/constant.dart';
import 'package:barber/shared/navigator.dart';
import 'package:barber/shared/textfield.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/barber.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: ClipRRect(
          // make sure we apply clip it properly
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
            child: Container(
              alignment: Alignment.center,
              color: Colors.grey.withOpacity(0.1),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: 12,
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MaterialButtonDesign(
                                pressed: () {navigate(context:context ,
                                    route: Login()
                                );},
                                minWidth: .5 * screenWidth - 64,
                                color: Colors.white,
                                label: 'Login'),
                            SizedBox(
                              width: 10,
                            ),
                            MaterialButtonDesign(
                                pressed: () {
                                  navigate(context:context ,
                                    route: Register()
                                  );
                                },
                                minWidth: .5 * screenWidth - 64,
                                color: Colors.white,
                                label: 'Register'),
                          ],
                        ),
                        MaterialButtonText(
                            label: 'Forget Paswword', pressed: () {}),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
