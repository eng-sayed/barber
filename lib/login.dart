import 'dart:ui';

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
                          validateLabel: "Enter Email",
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        LoginTextField(
                          controller: passController,
                          keyboardType: TextInputType.visiblePassword,
                          isPass: isPass,
                          label: 'Password',
                          validateLabel: "Enter Password",
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
                        SizedBox(height: 18,),

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
