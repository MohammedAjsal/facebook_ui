import 'package:facebook_ui/widgets/avatar.dart';
import 'package:facebook_ui/widgets/circularButton.dart';
import 'package:flutter/material.dart';
import 'package:facebook_ui/assets.dart';
import 'package:facebook_ui/widgets/circularButton.dart';

class StoryCard extends StatelessWidget {
  // const StoryCard({Key? key}) : super(key: key);
  final String labelText;
  final String story;
  final String avatar;
  final bool createStoryStatus;
  final bool verified;
  final bool displayBorder;

  StoryCard(
      {required this.labelText,
      required this.story,
      required this.avatar,
      this.createStoryStatus = false,
      this.verified = true,
      this.displayBorder = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 135,
      margin: EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(image: AssetImage(story), fit: BoxFit.cover),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 5,
            top: 5,
            child: createStoryStatus
                ? CircularButton(
                    iconSize: 20,
                    iconcolor: Colors.blue,
                    iconButton: Icons.add,
                    buttonAction: () {},
                  )
                : Avatar(
                    displayImage: avatar,
                    displayStatus: false,
                    displayBorder: displayBorder,
                    heightAvatar: 35,
                    widthAvatar: 35),
          ),
          Positioned(
            left: 15,
            bottom: 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  labelText != null ? labelText : "N/A",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 5,
                ),
                verified
                    ? Icon(
                        Icons.verified,
                        color: Colors.blue,
                        size: 18,
                      )
                    : SizedBox(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
