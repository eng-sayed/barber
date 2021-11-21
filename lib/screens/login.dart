import 'dart:ui';

import 'package:barber/shared/elements/auth_button.dart';
import 'package:barber/shared/constant.dart';
import 'package:barber/shared/elements/background_container.dart';
import 'package:barber/shared/elements/textfield.dart';
import 'package:barber/shared/responsive.dart';
import 'package:barber/shared/validation.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  bool isPass = true;
  IconData iconPass = Icons.visibility;
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return BackgroundContainer(
      child: Form(
        key: formkey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LoginTextField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    label: 'Email',
                    validate: Validation().emailValidation),
                SizedBox(
                  height: 12.h,
                ),
                LoginTextField(
                    controller: passController,
                    keyboardType: TextInputType.visiblePassword,
                    label: 'Password',
                    validate: Validation().passwordValidation),
                SizedBox(
                  height: 18.h,
                ),
                MaterialButtonDesign(
                    pressed: () {
                      if (formkey.currentState!.validate()) {
                        print('rr');
                      }
                    },
                    minWidth: 350.w,
                    color: Colors.white,
                    label: 'Login'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
