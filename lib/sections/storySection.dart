import 'package:facebook_ui/assets.dart';
import 'package:flutter/material.dart';
import 'package:facebook_ui/widgets/storyCard.dart';

class StorySection extends StatelessWidget {
  const StorySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            labelText: "ADD TO STORY",
            avatar: aju,
            story: ajupost,
            createStoryStatus: true,
            verified: false,
          ),
          StoryCard(
            labelText: "NEYMAR",
            avatar: neymar,
            story: neymarpost,
            createStoryStatus: false,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "MESSI",
            avatar: messi,
            story: messipost,
            createStoryStatus: false,
            displayBorder: true,
          ),
          StoryCard(
              labelText: "RONALDO",
              avatar: ronaldo,
              story: ronaldopost,
              createStoryStatus: false,
              displayBorder: true),
          StoryCard(
              labelText: "MAMMOOTTY",
              avatar: mammotty,
              story: mammottypost,
              createStoryStatus: false,
              displayBorder: true),
          StoryCard(
              labelText: "DULQUER ",
              avatar: dulquer,
              story: dulquerpost,
              createStoryStatus: false,
              displayBorder: true),
          StoryCard(
              labelText: "MOHANLAL",
              avatar: mohanlal,
              story: mohanlalpost,
              createStoryStatus: false,
              displayBorder: true),
          StoryCard(
              labelText: "VIRAT KOHLI",
              avatar: kohli,
              story: kohlipost,
              createStoryStatus: false,
              displayBorder: true),
        ],
      ),
    );
  }
}
