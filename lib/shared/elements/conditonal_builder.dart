import 'package:flutter/material.dart';

class ifBuilder extends StatelessWidget {
  ifBuilder(
      {Key? key,
      required this.theCondition,
      required this.falseChild,
      required this.trueChild})
      : super(key: key);
  Widget trueChild;
  Widget falseChild;
  bool theCondition;
  @override
  Widget build(BuildContext context) {
    return theCondition ? trueChild : falseChild;
  }
}
