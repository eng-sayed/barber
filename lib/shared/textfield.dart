import 'package:flutter/material.dart';

Widget LoginTextField({
  required TextInputType keyboardType,
   Widget? suffixIcon ,
  required TextEditingController controller,
  required String label ,
   bool isPass = false ,
required String validateLabel
}){
  return TextFormField(
    controller: controller,
    keyboardType: keyboardType,
    obscureText:isPass ,
    style: const TextStyle(
      color: Colors.white
    ),
    decoration:  InputDecoration(
      suffixIcon: suffixIcon!=null ?suffixIcon : null,
      border: OutlineInputBorder(),
      labelText: label,

      labelStyle: TextStyle(color: Colors.white),
      focusedBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(4)),
        borderSide: BorderSide(width: 1,color: Colors.white),
      ),

      // border: OutlineInputBorder(
      //   borderSide: const BorderSide(color: Colors.grey, width: 0.0),
      // ),
      enabledBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(4)),
        borderSide: BorderSide(width: 1,color: Colors.black),
      ),
    ),
    validator: (value) {
      if (value!.isEmpty) {
        return validateLabel;
      } else
        return null;
    },
  );

}