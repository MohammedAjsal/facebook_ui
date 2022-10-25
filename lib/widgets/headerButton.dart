import 'package:flutter/material.dart';

Widget headerButton({
  required String buttonText,
  required Color buttonColor,
  required IconData buttonIcon,
}) {
  return ElevatedButton.icon(
    onPressed: () {},
    icon: Icon(buttonIcon, color: buttonColor),
    label: Text(
      buttonText,
      style: TextStyle(color: Colors.black),
    ),
    style: ElevatedButton.styleFrom(
      elevation: 0,
      primary: Colors.white,
      shape: RoundedRectangleBorder(
        // side: BorderSide.none,
        borderRadius: BorderRadius.all(
          Radius.circular(0),
        ),
      ),
    ),
  );

  // FlatButton.icon(
  //   onPressed: () {},
  //   icon: Icon(
  //     buttonIcon,
  //     color: buttonColor,
  //   ),
  //   label: Text(buttonText),
  // );
}
