import 'package:facebook_ui/sections/headerButtonSection.dart';
import 'package:facebook_ui/widgets/avatar.dart';
import 'package:facebook_ui/widgets/blueTick.dart';
import 'package:facebook_ui/widgets/headerButton.dart';
import 'package:flutter/material.dart';
import 'package:facebook_ui/assets.dart';

class PostCard extends StatelessWidget {
  // const PostCard({Key? key}) : super(key: key);
  final String avatar;
  final bool verified;
  final String profileName;
  final String timePost;
  final String titlePost;
  final String postImage;
  final bool showBluetick;
  final String likeCount;
  final String shareCount;
  final String commentCount;

  PostCard(
      {required this.avatar,
      this.verified = true,
      required this.profileName,
      required this.timePost,
      required this.titlePost,
      required this.postImage,
      this.showBluetick = false,
      required this.likeCount,
      required this.commentCount,
      required this.shareCount});

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(2),
      child: Column(
        children: [
          postBaricon(),
          postTitle(context),
          SizedBox(
            height: 5,
          ),
          imageSection(),
          footerSection(),
          Divider(
            thickness: 1,
          ),
          HeaderButtonSection(
            buttonOne: headerButton(
                buttonText: "Like",
                buttonColor: (Colors.grey[500]!),
                buttonIcon: Icons.thumb_up),
            buttonTwo: headerButton(
                buttonText: "Comment",
                buttonColor: (Colors.grey[500]!),
                buttonIcon: Icons.message_outlined),
            buttonThree: headerButton(
                buttonText: "Share",
                buttonColor: (Colors.grey[500])!,
                buttonIcon: Icons.share),
          ),
        ],
      ),
    );
  }

  Widget footerSection() {
    return Container(
      height: 45,
      margin: EdgeInsets.only(left: 7, right: 5),
      // padding: EdgeInsets.only(left: 10, right: ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  width: 19,
                  height: 19,
                  decoration: BoxDecoration(
                      color: Colors.blueAccent, shape: BoxShape.circle),
                  child: Icon(
                    Icons.thumb_up,
                    size: 14,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                displayText(label: likeCount),
                SizedBox(
                  width: 5,
                )
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                displayText(label: commentCount),
                SizedBox(
                  width: 5,
                ),
                displayText(label: "Comments"),
                SizedBox(
                  width: 10,
                ),
                displayText(label: shareCount),
                SizedBox(
                  width: 5,
                ),
                displayText(label: "Shares"),
                SizedBox(
                  width: 10,
                ),
                Avatar(
                  displayImage: avatar,
                  displayStatus: false,
                  heightAvatar: 30,
                  widthAvatar: 30,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.grey[700],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget displayText({required String label}) {
    return Text(
      label == null ? "" : label,
      style: TextStyle(
        color: Colors.grey[700],
      ),
    );
  }

  Widget imageSection() {
    return Container(
      padding: EdgeInsets.only(top: 3, bottom: 5),
      child: Image.asset(postImage),
    );
  }

  Widget postTitle(context) {
    return titlePost != null && titlePost != ""
        ? Container(
            // width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(left: 12, right: 7),
            // padding: EdgeInsets.only(left: 5),
            child: Text(
              titlePost == null ? "" : titlePost,
              style: TextStyle(color: Colors.black, fontSize: 14),
            ),
          )
        : SizedBox();
  }

  Widget postBaricon() {
    return ListTile(
      leading: Avatar(displayImage: avatar, displayStatus: false),
      title: Row(
        children: [
          Text(
            profileName,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            width: 5,
          ),
          showBluetick ? BlurTick() : SizedBox(),
          // verified
          //     ? Icon(
          //         Icons.verified,
          //         color: Colors.blueAccent,
          //         size: 15,
          //       )
          //     : SizedBox()
        ],
      ),
      subtitle: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(timePost == null ? "" : timePost),
          SizedBox(
            width: 5,
          ),
          Icon(
            Icons.public,
            size: 14,
          ),
        ],
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.more_horiz_outlined,
        ),
      ),
    );
  }
}



 // child: Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //   children: [
      //     Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //       children: [
      //         Container(
      //           width: 19,
      //           height: 19,
      //           decoration: BoxDecoration(
      //               shape: BoxShape.circle, color: Colors.blueAccent),
      //           child: Icon(
      //             Icons.thumb_up,
      //             size: 13,
      //             color: Colors.white,
      //           ),
      //         ),
      //         SizedBox(
      //           width: 5,
      //         ),
      //         Text(
      //           "20K",
      //           style: TextStyle(fontSize: 14),
      //         ),
      //       ],
      //     ),
      //     Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //       children: [
      //         Text("1K Comments "),
      //         Text("10K Shares "),
      //         Avatar(
      //             displayImage: avatar,
      //             displayStatus: false,
      //             heightAvatar: 25,
      //             widthAvatar: 25),
      //         SizedBox(
      //           width: 5,
      //         ),
      //         Icon(Icons.arrow_drop_down),
      //       ],
      //     )
      //   ],
      // ),