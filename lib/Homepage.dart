
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:socail_media/Picture.dart';

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
               Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(color:
                Color.fromARGB(218, 245, 243, 238),
                borderRadius: BorderRadius.circular(15),
                ),
              child: Column(children: [
                   Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                    Container(
                     decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius:BorderRadius.circular(20)
                     ),
                     
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Icon(Icons.favorite,size: 40,color: Colors.white,),
                      )),
                    SizedBox(width: 30,),
                    Column(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                      Text('Exercise',style: TextStyle(fontSize: 30,color: Colors.black87),),
                      Text('15 Exercise',style: TextStyle(fontSize: 15,color: Colors.black87)),
                    ],),
                    SizedBox(width:100,),
                    Icon(Icons.more_horiz,size: 40,color: Colors.black,),
                  ],
                  ),
                  
                ),
              
                   Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                    Container(
                     decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius:BorderRadius.circular(20)
                     ),
                     
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Icon(Icons.auto_graph,size: 40,color: Colors.white,),
                      )),
                    SizedBox(width: 30,),
                    Column(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                      Text('chechta',style: TextStyle(fontSize: 30,color: Colors.black87),),
                      Text('22 shofolta',style: TextStyle(fontSize: 15,color: Colors.black87)),
                    ],),
                    SizedBox(width:100,),
                    Icon(Icons.more_horiz,size: 40,color: Colors.black,),
                  ],
                  ),
                  
                ),
              
                 Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                    Container(
                     decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius:BorderRadius.circular(20)
                     ),
                     
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Icon(Icons.add_home_work,size: 40,color: Colors.white,),
                      )),
                    SizedBox(width: 30,),
                    Column(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                      Text('practic',style: TextStyle(fontSize: 30,color: Colors.black87),),
                      Text('20 prautis',style: TextStyle(fontSize: 15,color: Colors.black87)),
                    ],),
                    SizedBox(width:100,),
                    Icon(Icons.more_horiz,size: 40,color: Colors.black,),
                  ],
                  ),
                  
                ),
              ],),
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