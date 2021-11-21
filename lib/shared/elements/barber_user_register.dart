import 'package:barber/screens/get_location.dart';
import 'package:barber/servies/map_servise/location.dart';
import 'package:barber/shared/elements/auth_button.dart';
import 'package:barber/shared/elements/navigator.dart';
import 'package:barber/shared/elements/textfield.dart';
import 'package:barber/shared/responsive.dart';
import 'package:barber/shared/validation.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class UserRegister extends StatelessWidget {
  const UserRegister({
    Key? key,
    required this.nameController,
    required this.phoneController,
    required this.emailController,
    required this.passwordController,
    required this.formkey,
  }) : super(key: key);

  final TextEditingController? nameController;
  final TextEditingController? phoneController;
  final TextEditingController? emailController;
  final TextEditingController? passwordController;
  final GlobalKey<FormState> formkey;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LoginTextField(
                controller: nameController!,
                keyboardType: TextInputType.name,
                label: 'Name',
                validate: Validation().defaultValidation),
            SizedBox(
              height: 12.h,
            ),
            LoginTextField(
                controller: phoneController!,
                keyboardType: TextInputType.number,
                label: 'Phone',
                validate: Validation().defaultValidation),
            SizedBox(
              height: 12.h,
            ),
            LoginTextField(
                controller: emailController!,
                keyboardType: TextInputType.emailAddress,
                label: 'Email',
                validate: Validation().emailValidation),
            SizedBox(
              height: 12.h,
            ),
            LoginTextField(
                controller: passwordController!,
                keyboardType: TextInputType.visiblePassword,
                label: 'Password',
                validate: Validation().passwordValidation),
            SizedBox(
              height: 12.h,
            ),
            LoginTextField(
              controller: TextEditingController(),
              keyboardType: TextInputType.visiblePassword,
              label: 'Confirm Password',
              validate: (value) => Validation()
                  .confirmPasswordValidation(value, passwordController!.text),
            ),
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
                label: 'Register'),
          ],
        ),
      ),
    );
  }
}

class BarberRegister extends StatelessWidget {
  const BarberRegister(
      {Key? key,
      required this.nameController,
      required this.phoneController,
      required this.emailController,
      required this.passwordController,
      required this.formkey,
      required this.storeNameController})
      : super(key: key);

  final TextEditingController? nameController;
  final TextEditingController? phoneController;
  final TextEditingController? emailController;
  final TextEditingController? passwordController;
  final TextEditingController? storeNameController;

  final GlobalKey<FormState> formkey;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LoginTextField(
                controller: nameController!,
                keyboardType: TextInputType.name,
                label: 'Owner Name',
                validate: Validation().defaultValidation),
            SizedBox(
              height: 12.h,
            ),
            LoginTextField(
                controller: storeNameController!,
                keyboardType: TextInputType.name,
                label: 'Barber Shop Name',
                validate: Validation().defaultValidation),
            SizedBox(
              height: 12.h,
            ),
            LoginTextField(
                controller: phoneController!,
                keyboardType: TextInputType.number,
                label: 'Phone',
                validate: Validation().defaultValidation),
            SizedBox(
              height: 12.h,
            ),
            LoginTextField(
                controller: emailController!,
                keyboardType: TextInputType.emailAddress,
                label: 'Email',
                validate: Validation().emailValidation),
            SizedBox(
              height: 12.h,
            ),
            LoginTextField(
                controller: passwordController!,
                keyboardType: TextInputType.visiblePassword,
                label: 'Password',
                validate: Validation().passwordValidation),
            SizedBox(
              height: 12.h,
            ),
            LoginTextField(
              controller: TextEditingController(),
              keyboardType: TextInputType.visiblePassword,
              label: 'Confirm Password',
              validate: (value) => Validation()
                  .confirmPasswordValidation(value, passwordController!.text),
            ),
            SizedBox(
              height: 18.h,
            ),
            MaterialButtonDesign(
                pressed: () {
                  if (formkey.currentState!.validate()) {
                    print('rr');
                    navigate(context: context, route: GetLocation());
                  }
                },
                minWidth: 350.w,
                color: Colors.white,
                label: 'Register'),
          ],
        ),
      ),
    );
  }
}
