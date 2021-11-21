import 'dart:ui';

import 'package:barber/screens/login.dart';
import 'package:barber/screens/register.dart';
import 'package:barber/shared/elements/auth_button.dart';
import 'package:barber/shared/constant.dart';
import 'package:barber/shared/elements/background_container.dart';
import 'package:barber/shared/elements/navigator.dart';
import 'package:barber/shared/elements/textfield.dart';
import 'package:barber/shared/responsive.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return BackgroundContainer(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                height: 12.h,
              ),
              SizedBox(
                height: 18.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MaterialButtonDesign(
                      pressed: () {
                        navigate(context: context, route: Login());
                      },
                      minWidth: 150.w,
                      color: Colors.white,
                      label: 'Login'),
                  SizedBox(
                    width: 10.w,
                  ),
                  MaterialButtonDesign(
                      pressed: () {
                        navigate(context: context, route: Register());
                      },
                      minWidth: 150.w,
                      color: Colors.white,
                      label: 'Register'),
                ],
              ),
              MaterialButtonText(label: 'Forget Paswword', pressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
