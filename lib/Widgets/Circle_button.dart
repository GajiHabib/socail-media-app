import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {

  final IconData icon;
  final double iconSize;
  final Color iconcolor;
  final VoidCallback onpressed;
  const CircleButton({Key?key,
  required this.icon,
  required this.iconSize,
  required this.iconcolor, 
  required this.onpressed,
  }):super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color:  Colors.grey[200],
        shape: BoxShape.circle,
      ),
      child:IconButton(
        icon: Icon(icon),
        iconSize: iconSize,
        color: iconcolor,
        onPressed: onpressed,
        
        ),
    );
  }
}