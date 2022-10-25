import 'package:facebook_ui/assets.dart';
import 'package:facebook_ui/widgets/avatar.dart';
import 'package:flutter/material.dart';

class RoomSection extends StatelessWidget {
  const RoomSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(12),
        children: [
          roomButton(),
          Avatar(displayImage: neymar, displayStatus: true),
          Avatar(displayImage: ronaldo, displayStatus: true),
          Avatar(displayImage: messi, displayStatus: true),
          Avatar(displayImage: dulquer, displayStatus: true),
          Avatar(displayImage: mammotty, displayStatus: true),
          Avatar(displayImage: mohanlal, displayStatus: true),
          Avatar(displayImage: aju, displayStatus: true),
        ],
      ),
    );
  }
}

Widget roomButton() {
  return Container(
    padding: EdgeInsets.only(right: 5, left: 5),
    child: OutlinedButton.icon(
      onPressed: () {
        print("To create video call");
      },
      icon: Icon(
        Icons.video_call,
        color: Colors.purple,
      ),
      label: Text("Create \nRoom"),
      style: ElevatedButton.styleFrom(
        side: BorderSide(color: Colors.blue, width: 1),
        shape: StadiumBorder(),
      ),
    ),
  );
}

// Widget paddingSpace() {
//   return Padding(
//     padding: EdgeInsets.all(2),
//   );
// }

 // ButtonStyle(
          //   shape:
          //   ElevatedButton.styleFrom(s)
          // ElevatedButton.styleFrom(
          //   RoundedRectangleBorder(
          //     borderRadius: BorderRadius.circular(25),
          //     side: BorderSide(color: Colors.blue, width: 5),
          //   ),
          // ),