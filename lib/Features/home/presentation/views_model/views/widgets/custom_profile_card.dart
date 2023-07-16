import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomProfileCard extends StatelessWidget {
  const CustomProfileCard({Key? key, required this.name}) : super(key: key);
  final String name;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        backgroundColor: Colors.black,
        radius: 60,
        child: Icon(
          CupertinoIcons.profile_circled,
          size: 56,
        ),
      ),
      title: Text(
        name,
        style: const TextStyle(
          fontSize: 26,
        ),
      ),
    );
  }
}
