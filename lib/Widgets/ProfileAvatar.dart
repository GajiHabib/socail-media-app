import 'package:flutter/material.dart';
import 'package:socail_media/config/palette.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ProfileAvatar extends StatelessWidget {

  final String imageurl;
  final bool online;
  final bool hasBorder;
  const ProfileAvatar({Key?key,required this.imageurl,this.hasBorder=false,this.online=false}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          radius: 20,
          backgroundColor: palette.facebookBlue,
          child:CircleAvatar(
            radius: hasBorder?17.0:20,
            backgroundColor: const Color.fromARGB(288, 33, 67, 33),
            backgroundImage: CachedNetworkImageProvider(imageurl),
          ),
        ),
         isOnline
        ? Positioned(
          bottom: 00,
          right: 00,
          child:Container(
            height: 15,
            width: 15,
            decoration: BoxDecoration(
              color:palette.online,
              shape: BoxShape.circle,
              border: Border.all(
                width: 2,
                color: Colors.white
              ),

            ),
          ) )
          :const SizedBox.shrink()
      ]
    );
  }
}