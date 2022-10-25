import 'package:facebook_ui/widgets/avatar.dart';
import 'package:flutter/material.dart';
import 'package:facebook_ui/assets.dart';

class StatusSection extends StatelessWidget {
  const StatusSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Avatar(displayImage: ajupost, displayStatus: false),
      title: TextField(
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          hintText: "What,s on your mind ?",
          suffixIcon: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.photo_library_sharp,
              color: Colors.green,
            ),
          ),
        ),
      ),
    );
  }
}
