import 'package:facebook_ui/assets.dart';
import 'package:facebook_ui/widgets/suggestionCard.dart';
import 'package:flutter/material.dart';

class SuggestionSection extends StatelessWidget {
  const SuggestionSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      child: Column(
        children: [
          ListTile(
            leading: Text("People You May Know"),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                color: Colors.grey[700],
              ),
            ),
          ),
          Container(
            height: 390,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SuggestionCard(
                  avatar: neymarpost,
                  profileName: "Neymar.jr",
                  mutualFriends: "400 mutual friends",
                  addFriend: () {},
                  removeFriend: () {},
                  showbluetick: true,
                ),
                SuggestionCard(
                  avatar: ajupost,
                  profileName: "Ajsal Shaah",
                  mutualFriends: "20 mutual friends",
                  addFriend: () {},
                  removeFriend: () {},
                  showbluetick: false,
                ),
                SuggestionCard(
                  avatar: messi,
                  profileName: "Lionel Messi",
                  mutualFriends: "400 mutual friends",
                  addFriend: () {},
                  removeFriend: () {},
                  showbluetick: true,
                ),
                SuggestionCard(
                  avatar: ronaldopost,
                  profileName: "Cristiano Ronaldo",
                  mutualFriends: "400 mutual friends",
                  addFriend: () {},
                  removeFriend: () {},
                  showbluetick: true,
                ),
                SuggestionCard(
                  profileName: "Mammootty",
                  avatar: mammottypost,
                  addFriend: () {},
                  mutualFriends: "150 mutual friends",
                  removeFriend: () {},
                  showbluetick: true,
                ),
                SuggestionCard(
                  avatar: mohanlal,
                  profileName: "Mohanlal",
                  mutualFriends: "200 mutual friends",
                  addFriend: () {},
                  removeFriend: () {},
                  showbluetick: true,
                ),
              ],
            ),
          ),
          // Container(
          //   height: 400,
          //   child: ListView(
          //     scrollDirection: Axis.horizontal,
          //     children: [
          //       SuggestionCard(),
          //       SuggestionCard(),
          //       SuggestionCard(),
          //     ],
          //   ),
          // )
        ],
      ),
    );
  }
}
