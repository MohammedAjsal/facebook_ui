import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
// import 'package:facebook_ui/home.dart';

class CircularButton extends StatelessWidget {
  // const AppBarButton({Key? key}) : super(key: key);

  final IconData iconButton;
  final void Function() buttonAction;
  final Color iconcolor;
  final double iconSize;

  CircularButton(
      {required this.iconButton,
      required this.buttonAction,
      this.iconcolor = Colors.black,
      required this.iconSize});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 38,
      height: 38,
      margin: EdgeInsets.all(5.5),
      // color: Colors.grey,
      decoration: BoxDecoration(
          color: Colors.grey[300],
          // borderRadius: BorderRadius.circular(10),
          shape: BoxShape.circle),
      child: IconButton(
        splashRadius: 25,
        onPressed: buttonAction,
        icon: Icon(iconButton),
        color: iconcolor,
        iconSize: iconSize,
      ),
    );
  }
}
