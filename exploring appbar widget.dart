exploring appbar widget.dart

 
 import 'package:flutter/material.dart';

 void main()=> runApp(Myapp());

 class Myapp extends StatefulWidget {
   @override
   _MyappState createState() => _MyappState();
 }
 
 class _MyappState extends State<Myapp> {
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       theme: ThemeData.fallback(),
       home: Homepage(),
       
     );
   }
 }

 class Homepage extends StatefulWidget {
   @override
   _HomepageState createState() => _HomepageState();
 }
 
 class _HomepageState extends State<Homepage> {
       
    
       Icon cusicon = Icon(Icons.search);
    Widget cusserachbar = Text("AppBar");
   @override
   Widget build(BuildContext context) {
     return Scaffold(
      

      appBar: AppBar(
        leading: IconButton(onPressed: (){},
        icon: Icon(Icons.menu),),

        actions: <Widget>[
          

           IconButton(icon: cusicon, onPressed: (){
             setState(() {
               if(this.cusicon.icon==Icons.search)
               { 
                 this.cusicon=Icon(Icons.cancel);
                 this.cusserachbar= TextField(
                 decoration: InputDecoration(
                   hintText: "Search here",
                   
                 ),
                 );

               }
               else{
                 this.cusicon =Icon(Icons.search);
                 this.cusserachbar=Text("AppBar");

               }
             });
           },),
           IconButton(icon: Icon(Icons.more_vert), onPressed: (){})

        ],
          //increse size ofapp bar using bottom
         bottom: PreferredSize(child: Container(), preferredSize: Size(20,20)),
         elevation: 20.0,
        titleSpacing: 30.0,
        backgroundColor: Colors.green[800],
       title: cusserachbar,
        ),
      

       
     );
   }
 }