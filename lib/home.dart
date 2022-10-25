import 'package:facebook_ui/assets.dart';
import 'package:facebook_ui/sections/headerButtonSection.dart';
import 'package:facebook_ui/sections/roomSection.dart';
import 'package:facebook_ui/sections/statusSection.dart';
import 'package:facebook_ui/sections/storySection.dart';
import 'package:facebook_ui/sections/suggestionSection.dart';
import 'package:facebook_ui/widgets/headerButton.dart';
import 'package:facebook_ui/widgets/postCard.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:facebook_ui/widgets/circularButton.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "FaceBook",
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "facebook",
            style: TextStyle(
                color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 23),
          ),
          elevation: 0,
          actions: [
            // refactor respect to class container placed a new class
            // Container(
            //   margin: EdgeInsets.all(5),
            //   // color: Colors.grey,
            //   decoration: BoxDecoration(
            //       color: Colors.grey[300],
            //       // borderRadius: BorderRadius.circular(10),
            //       shape: BoxShape.circle),
            //   child: IconButton(
            //     onPressed: () {},
            //     icon: Icon(Icons.search),
            //     color: Colors.black,
            //     iconSize: 23,
            //   ),
            // ),
            CircularButton(
              iconSize: 20,
              iconcolor: Colors.black,
              iconButton: Icons.search,
              buttonAction: () {
                print("Search the accounts");
              },
            ),
            CircularButton(
              iconSize: 20,
              iconcolor: Colors.black,
              iconButton: Icons.messenger_outline,
              buttonAction: () {
                print("in to the message");
              },
            )
          ],
        ),
        body: ListView(
          children: [
            StatusSection(),
            Divider(
              thickness: 1,
              color: Colors.grey[300],
            ),
            HeaderButtonSection(
              buttonOne: headerButton(
                buttonColor: Colors.red,
                buttonText: "Live",
                buttonIcon: Icons.public,
              ),
              buttonTwo: headerButton(
                  buttonText: "Photos",
                  buttonColor: Colors.green,
                  buttonIcon: Icons.photo_library_sharp),
              buttonThree: headerButton(
                  buttonText: "Room",
                  buttonColor: Colors.purple,
                  buttonIcon: Icons.video_call),
            ),
            Divider(
              thickness: 10,
              color: Colors.grey[300],
            ),
            RoomSection(),
            Divider(
              thickness: 10,
              color: Colors.grey[300],
            ),
            StorySection(),
            Divider(
              thickness: 10,
              color: Colors.grey[300],
            ),
            PostCard(
              likeCount: "20K", commentCount: "10K", shareCount: "30K",
              showBluetick: true,
              postImage: neymarpost,
              titlePost: neymarTitle,
              timePost: "6h",
              profileName: "Neymar.jr",
              avatar: neymar,
              // verified: true,
            ),
            divider(),
            PostCard(
              likeCount: "10k", commentCount: "5K", shareCount: "20K",
              showBluetick: true,
              postImage: ronaldopost,
              titlePost: ronaldotitle,
              timePost: "6h",
              profileName: "Cristiano Ronaldo",
              avatar: ronaldopost,
              // verified: true,
            ),
            divider(),
            SuggestionSection(),
            divider(),
            PostCard(
              likeCount: "30k", commentCount: "15K", shareCount: "50K",
              showBluetick: true,
              postImage: messipost,
              titlePost: messiTitle,
              timePost: "10",
              profileName: "Lional Messi",
              avatar: messi,
              // verified: true,
            ),
            divider(),
            PostCard(
              likeCount: "100k", commentCount: "50K", shareCount: "150K",
              showBluetick: true,
              postImage: dulquerpost1,
              titlePost: dulquerTitle,
              timePost: "10",
              profileName: "Dulque Salman",
              avatar: dulquer,
              // verified: true,
            ),

            divider(),
            PostCard(
              likeCount: "100k", commentCount: "50K", shareCount: "150K",
              showBluetick: false,
              postImage: ajupost,
              titlePost: "",
              timePost: "22",
              profileName: "Ajsal Shaah",
              avatar: aju,
              // verified: true,
            ),
            divider(),

            // PostCard(
            //   showBluetick: true,
            //   postImage: dulquerpost1,
            //   titlePost: "Obsessed....",
            //   timePost: "6h",
            //   profileName: "Dulquer Salman",
            //   avatar: dulquer,
            //   // verified: true,
            // ),
            // divider(),
            // PostCard(
            //   showBluetick: false,
            //   postImage: ajupost,
            //   titlePost: "New post of new year",
            //   timePost: "6h",
            //   profileName: "Ajsal Shaah",
            //   avatar: aju,
            //   // verified: true,
            // ),
            // divider(),
            // PostCard(
            //   showBluetick: false,
            //   postImage: anupost,
            //   titlePost: "I can do what am capable...",
            //   timePost: "6h",
            //   profileName: "Ansal Shaah",
            //   avatar: anu,
            //   // verified: true,
            // ),
          ],
        ),
      ),
    );
  }

  Widget divider() {
    return Divider(
      thickness: 10,
      color: Colors.grey[300],
    );
  }
}
