// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:socail_media/Models/Models.dart';
import 'package:socail_media/Widgets/ProfileAvatar.dart';
import 'package:socail_media/config/palette.dart';

class Room extends StatelessWidget {
  final List<User> onlineUsers;
  const Room({Key? key, required this.onlineUsers}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Colors.white,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 10),
        itemCount: 1 + onlineUsers.length,
        itemBuilder: (context, index) {
          if (index == 0) {
            return const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 8,
              ),
              child: _CreateRoomButton(),
            );
          }
          final User user = onlineUsers[index - 1];
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: ProfileAvatar(
              imageurl: user.imageUrl,
              isOnline: true,
            ),
          );
        },
      ),
    );
  }
}

class _CreateRoomButton extends StatelessWidget {
  const _CreateRoomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () => print("Create Room"),
      style: OutlinedButton.styleFrom(
        foregroundColor: palette.facebookBlue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
          //side: const BorderSide(width: 3, color: Colors.blueAccent),
        ),
        side: BorderSide(width: 3, color: Colors.blueAccent[200]!),
      ),
      child: Row(
        children: [
          ShaderMask(
            shaderCallback: (rect) =>
                palette.createRoomGradient.createShader(rect),
            child: const Icon(
              Icons.video_call,
              size: 35.0,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 4.0),
          const Text("Create\nRoom"),
        ],
      ),
    );
  }
}
