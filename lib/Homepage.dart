
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:socail_media/Picture.dart';
import 'package:socail_media/icon.dart';


class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.blue,

    bottomNavigationBar: BottomNavigationBar(items: [
      BottomNavigationBarItem(icon:Icon(Icons.home,),label: ''),
      BottomNavigationBarItem(icon:Icon(Icons.settings_input_antenna,),label: ''),
      BottomNavigationBarItem(icon:Icon(Icons.collections,),label: ''),
    ]),

        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:5),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('facebook',style: TextStyle
                          (fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold),),
                               SizedBox(height:10,),
                         Text("25 des 2023",style: TextStyle(fontSize: 20,color:Colors.blue[50],fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                      color: Colors.blue[800],
                      borderRadius: BorderRadius.circular(40)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.search,color: Colors.white,size: 40,),
                    
                      ))
                  ],
                ),
              SizedBox(height: 15,),
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue[800],
                  borderRadius: BorderRadius.circular(14),
                ),
                  
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(children: [
                  Icon(Icons.search,size: 40,color: Colors.white,),
                  SizedBox(width: 15,),
                  Text('search',style: TextStyle(fontSize: 30,color: Colors.white),)
                          ],),
                ),),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 
                  children: [
                     Text('What`s on your maid?',style: TextStyle
                  (fontSize: 17,color: Colors.white,fontWeight: FontWeight.bold),),
                  Icon(Icons.more_horiz,color: Colors.white,size:40,)
                  ],
                ),
                SizedBox(height: 10,),
             
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    
                    children: [
                   
                               Column(
                   children: [
                     Picture(image: 'habib/sir.jpg',),
                     Text('Sir',style: TextStyle(fontSize: 15,color: Colors.white),)
                   ],
                               ), 
                               Column(
                   children: [
                     Picture(image: 'habib/ha.jpeg',),
                     Text('gaji',style: TextStyle(fontSize: 15,color: Colors.white),)
                   ],
                               ),
                               Column(
                   children: [
                     Picture(image: 'habib/sakib.jpg',),
                     Text('sakib',style: TextStyle(fontSize: 15,color: Colors.white),)
                   ],
                               ),
                  ],),
                ),
                SizedBox(height: 15,),
              Expanded(child: Container(
             color: Colors.white,
             child: Column(children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text('Exarsize',style: TextStyle(fontSize: 20),),
                  Icon(Icons.more_horiz,size: 30,color: Colors.black,)
                ],),
              ),
              SizedBox(height: 20,),
              Expanded(
                child: ListView(
                  children: [
                  chechta(Exarsize:'Madrsa', numberExarsize:'20 Madrasa',
                   data:Icons.favorite,Color: Colors.orange,), 
                     chechta(Exarsize:'Madrsa', numberExarsize:'20 Madrasa',
                   data:Icons.accessibility,Color: Colors.black87,),
                     chechta(Exarsize:'Madrsa', numberExarsize:'20 Madrasa',
                   data:Icons.add_rounded,Color: Colors.blueAccent,),
                     chechta(Exarsize:'Madrsa', numberExarsize:'20 Madrasa',
                   data:Icons.air_sharp,Color: Colors.yellow,),
                     chechta(Exarsize:'Madrsa', numberExarsize:'20 Madrasa',
                   data:Icons.add_ic_call_rounded,Color: Colors.grey,),
                     chechta(Exarsize:'Madrsa', numberExarsize:'20 Madrasa',
                   data:Icons.phone_android,Color: Colors.brown,),
                     chechta(Exarsize:'Madrsa', numberExarsize:'20 Madrasa',
                   data:Icons.security,Color: Colors.lime,),
                  ],
                ),
              )
             ],),
              )),
             
              ],
            ),
          ),
        ),
      );
  
  }
}