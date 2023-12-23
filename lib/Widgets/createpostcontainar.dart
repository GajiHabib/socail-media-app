// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class CreatePostContainer extends StatelessWidget {
  final user currentUser;
  const CreatePostContainer({Key? key, required this.currentUser})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              profileAvatar(imageurl: currentUser.imageurl),
              const SizedBox(
                width: 8.0,
              ),
              const Expanded(
                  child: TextField(
                decoration:
                    InputDecoration.collapsed(hintText: 'What`s on your maid?'),
              ))
            ],
          ),
          const Divider(
            height: 10.0,
            thickness: 0.6,
            color: Colors.blue,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton.icon(
                  onPressed: () => print("Live"),
                  icon: Icon(
                    Icons.videocam,
                    color: Colors.red,
                  ),
                  label: Text(
                    'Live',
                    style: TextStyle(color: Colors.black),
                  )),
              const VerticalDivider(
                  width: 8.0,
                  thickness: 8,),
                   TextButton.icon(
                      onPressed: () => print('photo'),
                      icon: const Icon(
                        Icons.photo_library,
                        color: Colors.green,
                      ),
                      label: Text(
                        'photo',
                        style: TextStyle(color: Colors.black),
                      )),
                      const VerticalDivider(width: 8,thickness: 8,),
                      TextButton.icon(onPressed: () => print('Room'),
                       icon:Icon(Icons.video_call), label:Text('Room',style: TextStyle(color: Colors.black),))
            ],
          )
        ],
      ),
    );
  }
}
