import 'dart:ffi';

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class HeaderButtonSection extends StatelessWidget {
  final Widget buttonOne;
  final Widget buttonTwo;
  final Widget buttonThree;

  HeaderButtonSection(
      {required this.buttonOne,
      required this.buttonTwo,
      required this.buttonThree});

  // const HeaderButtonSection({Key? key}) : super(key: key);

  Widget verticalDivide = VerticalDivider(
    thickness: 1,
    color: Colors.grey[300],
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.amber,
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buttonOne,

          verticalDivide,
          buttonTwo,

          verticalDivide,
          buttonThree,

          // VerticalDivider(
          //   thickness: 1,
          //   color: Colors.grey[300],
          // )
        ],
      ),
    );
  }
}
