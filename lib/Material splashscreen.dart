Material splashscreen.dart
 import 'dart:async';

import 'package:flutter/material.dart';

 void main()=> runApp( Myapp());

 class Myapp extends StatefulWidget {
   @override
   _MyappState createState() => _MyappState();
 }
 
 class _MyappState extends State<Myapp> {
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       darkTheme: ThemeData() ,
       home: Homepage(),
       
     );
   }
 }


 class Homepage extends StatefulWidget {
   @override
   _HomepageState createState() => _HomepageState();
 }
 
 class _HomepageState extends State<Homepage> {
  void init()
  {
    super.initState();
    debugPrint("processes start");
    Timer(Duration(seconds: 5), finished);
    


  }
  void finished(){
    debugPrint("finished.......");
  }
   @override
   Widget build(BuildContext context) {
     return  Scaffold(
       backgroundColor: Colors.blue,
       body: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[
         Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             CircularProgressIndicator(backgroundColor: Colors.white
             ,),
             Text("opening fb",
             style: TextStyle(
               color: Colors.red,
               fontSize: 20.0,
               fontWeight: FontWeight.bold,
             ),)

         ],)
       ],),
     );
   }
 }