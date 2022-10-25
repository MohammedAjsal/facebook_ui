import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  // const Avatar({Key? key}) : super(key: key);

  final String displayImage;
  final bool displayStatus;
  final bool displayBorder;
  final double widthAvatar;
  final double heightAvatar;

  Avatar(
      {required this.displayImage,
      required this.displayStatus,
      this.displayBorder = false,
      this.heightAvatar = 43,
      this.widthAvatar = 43});

  @override
  Widget build(BuildContext context) {
    // Widget statusIndicator;
    // if (displayStatus == true) {
    //   statusIndicator = Positioned(
    //     bottom: 0,
    //     right: .5,
    //     child: Container(
    //       height: 15,
    //       width: 15,
    //       decoration: BoxDecoration(
    //         color: Colors.greenAccent,
    //         shape: BoxShape.circle,
    //         border: Border.all(color: Colors.white, width: 2),
    //       ),
    //     ),
    //   );
    // } else {
    //   statusIndicator = SizedBox();
    // }
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              border: displayBorder
                  ? Border.all(color: Colors.blueAccent, width: 2)
                  : null,
              shape: BoxShape.circle),
          padding: EdgeInsets.only(left: 4, right: 4),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(110),
            child: Image.asset(
              displayImage,
              width: widthAvatar,
              height: heightAvatar,
            ),
          ),
        ),

        displayStatus == true
            ? Positioned(
                bottom: 0,
                right: .5,
                child: Container(
                  height: 15,
                  width: 15,
                  decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 2),
                  ),
                ),
              )
            : SizedBox(),
        // statusIndicator,
      ],
    );
  }
}
