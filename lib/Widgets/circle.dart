import 'package:flutter/material.dart';

class circle extends StatelessWidget {

final IconData data;
final Color iconcolor;
final VoidCallback onPressed;

  const circle({super.key, required this.data, required this.iconcolor, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      child:IconButton(onPressed: onPressed, icon:Icon(data,color: iconcolor,)),
    );
  }
}