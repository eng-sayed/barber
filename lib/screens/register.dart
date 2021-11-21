import 'package:barber/screens/login.dart';
import 'package:barber/shared/elements/auth_button.dart';
import 'package:barber/shared/elements/background_container.dart';
import 'package:barber/shared/elements/barber_user_register.dart';
import 'package:barber/shared/elements/switcher_widget.dart';
import 'package:barber/shared/responsive.dart';
import 'package:barber/shared/elements/textfield.dart';
import 'package:barber/shared/validation.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  TextEditingController? nameController;
  TextEditingController? storeNameController;
  TextEditingController? emailController;
  TextEditingController? passwordController;
  TextEditingController? phoneController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    nameController = TextEditingController();
    storeNameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    phoneController = TextEditingController();
  }

  @override
  void dispose() {
    nameController!.dispose();
    storeNameController!.dispose();
    emailController!.dispose();
    passwordController!.dispose();
    phoneController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BackgroundContainer(
        child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            children: [
              Form(
                key: formkey,
                child: SwitcherWidget(
                  trueLabel: "Switch to Barber Register?",
                  falseLabel: "Switch to Customer Register?",
                  trueChild: UserRegister(
                      nameController: nameController,
                      phoneController: phoneController,
                      emailController: emailController,
                      passwordController: passwordController,
                      formkey: formkey),
                  falseChild: BarberRegister(
                      nameController: nameController,
                      phoneController: phoneController,
                      emailController: emailController,
                      passwordController: passwordController,
                      storeNameController: storeNameController,
                      formkey: formkey),
                ),
              ),
            ],
          )
        ],
      ),
    ));
  }
}
