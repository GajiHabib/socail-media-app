// ignore_for_file: prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';

class chechta extends StatelessWidget {
  final IconData data;
  final String Exarsize;
  final String numberExarsize;
  final Color;
  const chechta({super.key, required this.Exarsize, required this.numberExarsize, this.Color, required this.data});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black,
      child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(color:
                  Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  ),
                child: Column(children: [
                     Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Container(
                          padding: EdgeInsets.all(10),
                          color:Color,
                            child: Icon(data,color: Colors.white,),
                          )),
                      
                      SizedBox(width: 30,),
                      // ignore: prefer_const_constructors
                      Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          
                        Text(Exarsize,selectionColor: Colors.black,),
                        Text(numberExarsize,style: TextStyle(color: Colors.black),) 
                      ],),
                      SizedBox(width:100,),
                      Icon(Icons.more_horiz,size: 40,color: Colors.black),
                    ],
                    ),
                    
                  ),
               
                
                ],),
                  ),
    );
  }
}