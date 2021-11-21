import 'dart:ui';

import 'package:barber/shared/auth_button.dart';
import 'package:barber/shared/constant.dart';
import 'package:barber/shared/textfield.dart';
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
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        //backgroundColor: Color(0x44000000),
        elevation: 0,
      ),
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
                          validate: (value) {
                            String p =
                                r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

                            RegExp regExp = RegExp(p);
                            if (value!.isEmpty || !regExp.hasMatch(value)) {
                              return ('Please, Enter Email');
                            } else
                              return null;
                          },
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        LoginTextField(
                          controller: passController,
                          keyboardType: TextInputType.visiblePassword,
                          isPass: isPass,
                          label: 'Password',
                          validate: (value) {
                            if (value!.isEmpty || value.length < 8) {
                              return ('Password must be more 8 letter');
                            } else
                              return null;
                          },
                          suffixIcon: IconButton(
                            icon: Icon(
                              isPass ? iconPass : Icons.visibility_off,
                              color: Colors.grey[100],
                            ),
                            onPressed: () {
                              setState(() {
                                isPass = !isPass;
                              });
                            },
                          ),
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        MaterialButtonDesign(
                            pressed: () {
                              if (formkey.currentState!.validate()) {
                                print('rr');
                              }
                            },
                            minWidth: SizeConfig.screenWidth! - 64,
                            color: Colors.white,
                            label: 'Login'),
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
