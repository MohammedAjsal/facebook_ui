import 'dart:ui';

import 'package:facebook_ui/assets.dart';
import 'package:facebook_ui/widgets/blueTick.dart';
import 'package:flutter/material.dart';

class SuggestionCard extends StatelessWidget {
  // const SuggestionCard({Key? key}) : super(key: key);

  final String profileName;
  final String avatar;
  final String mutualFriends;
  final void Function() addFriend;
  final void Function() removeFriend;
  final bool showbluetick;

  SuggestionCard({
    required this.profileName,
    required this.avatar,
    required this.mutualFriends,
    required this.addFriend,
    required this.removeFriend,
    this.showbluetick = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 13,
        right: 4,
      ),
      width: 280,
      child: Stack(
        children: [
          suggestionImage(),
          suggestionDetails(),
        ],
      ),
    );
  }

  Widget suggestionDetails() {
    return Positioned(
      top: 250,
      right: 0,
      left: 0,
      bottom: 0,
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: (Colors.grey[200]!),
            ),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
            color: Colors.white),
        height: 140,
        // color: Colors.grey[300],
        child: Column(
          children: [
            ListTile(
              title: Row(
                children: [
                  Text(
                    profileName != null ? profileName : "",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  showbluetick ? BlurTick() : SizedBox(),
                ],
              ),
              subtitle: Text(mutualFriends),
            ),
            Container(
              padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
              // margin: EdgeInsets.only(left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  iconButton(
                      buttonAction: addFriend,
                      buttonIcon: Icons.person_add_alt_rounded,
                      buttonColor: Colors.blueAccent,
                      buttonTextColor: Colors.white,
                      buttonIconColor: Colors.white,
                      buttonText: "Add Friend "),
                  SizedBox(
                    width: 3,
                  ),
                  blankButton(
                      buttonAction: removeFriend,
                      buttonColor: Colors.white,
                      buttonText: "Remove",
                      buttonTextColor: Colors.black),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget blankButton({
    required void Function() buttonAction,
    required Color buttonColor,
    required String buttonText,
    required Color buttonTextColor,
  }) {
    return ElevatedButton(
      onPressed: buttonAction,
      child: Text(
        buttonText,
        style: TextStyle(color: buttonTextColor),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
        ),
      ),

      // ButtonStyle(backgroundColor: buttonColor  ,),
    );

    // FlatButton(
    //   color: buttonColor,
    //   onPressed: buttonAction,
    //   child: Text(
    //     buttonText,
    //     style: TextStyle(color: buttonTextColor),
    //   ),
    //   shape: RoundedRectangleBorder(
    //     borderRadius: BorderRadius.all(
    //       Radius.circular(5),
    //     ),
    //   ),
    // );
  }

  Widget iconButton({
    required void Function() buttonAction,
    required IconData buttonIcon,
    required Color buttonColor,
    required Color buttonTextColor,
    required Color buttonIconColor,
    required String buttonText,
  }) {
    return ElevatedButton.icon(
      onPressed: buttonAction,
      icon: Icon(buttonIcon, color: buttonIconColor),
      label: Text(
        buttonText,
        style: TextStyle(color: buttonTextColor),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
        ),
      ),
    );

    // FlatButton.icon(
    //   onPressed: buttonAction,
    //   icon: Icon(
    //     buttonIcon,
    //     color: buttonIconColor,
    //   ),
    //   label: Text(
    //     buttonText,
    //     style: TextStyle(color: buttonTextColor),
    //   ),
    //   color: buttonColor,
    //   shape: RoundedRectangleBorder(
    //     borderRadius: BorderRadius.all(
    //       Radius.circular(5),
    //     ),
    //   ),
    // );
  }

  Widget suggestionImage() {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
        child: avatar != null
            ? Image.asset(avatar, height: 250, fit: BoxFit.cover)
            : SizedBox(),
      ),
    );
  }
}
