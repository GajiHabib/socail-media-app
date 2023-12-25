// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Picture extends StatelessWidget {
  final String image;
  const Picture({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 120,
      decoration: BoxDecoration(
        color: Colors.blue[700],
        borderRadius: BorderRadius.circular(12),
      
      ),
  
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(image),
      ),
    );
  }
}