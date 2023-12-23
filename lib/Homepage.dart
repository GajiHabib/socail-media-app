// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:socail_media/Widgets/Circle_button.dart';
import 'package:socail_media/Widgets/Room.dart';
import 'package:socail_media/Widgets/circle.dart';
import 'package:socail_media/Widgets/createpostcontainar.dart';
import 'package:socail_media/config/palette.dart';
import 'package:socail_media/data/data.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea
    (child: Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            title: Text('facebook',style: TextStyle(
              color:palette.facebookBlue,
              fontSize: 40,
              fontWeight: FontWeight.bold,
              letterSpacing: -1.1
            ),),
            centerTitle: false,
            floating: true,
            actions: [
               CircleButton(
                icon:Icons.search,
                iconSize:40,
                iconcolor:Colors.black,
                onpressed:()=>print("search")

              ),
              circle(data:Icons.search, iconcolor:Colors.black, onPressed: (){}),
              circle(data: Icons.airline_seat_flat, iconcolor:Colors.blue, onPressed: (){})

            ],
          ),
          const SliverToBoxAdapter(
            child: CreatePostContainer(currentUser:currentUser),
          ),
          SliverPadding(
              padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 5.0),
              sliver: SliverToBoxAdapter(
                child:Room(onlineUsers:onlineUsers),
              ),
            )
        ],
      ),
    ));
  }
}
