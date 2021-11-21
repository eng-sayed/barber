import 'package:barber/shared/elements/auth_button.dart';
import 'package:barber/shared/responsive.dart';
import 'package:flutter/material.dart';

//////////////// Swich between widgets   //////////////
class SwitcherWidget extends StatefulWidget {
  SwitcherWidget(
      {Key? key,
      required this.falseChild,
      required this.trueChild,
      required this.falseLabel,
      required this.trueLabel})
      : super(key: key);
  Widget trueChild;
  Widget falseChild;
  String trueLabel;
  String falseLabel;
  @override
  _SwitcherWidgetState createState() => _SwitcherWidgetState();
}

class _SwitcherWidgetState extends State<SwitcherWidget> {
  bool mySwitcher = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            AnimatedSwitcher(
                duration: Duration(milliseconds: 300),
                child: mySwitcher ? widget.trueChild : widget.falseChild),
            SizedBox(
              height: 12.h,
            ),
            MaterialButtonDesign(
                pressed: () {
                  setState(() {});
                  mySwitcher = !mySwitcher;
                },
                minWidth: 350.w,
                color: Colors.white,
                label: mySwitcher ? widget.trueLabel : widget.falseLabel)
          ],
        )
      ],
    );
  }
}
