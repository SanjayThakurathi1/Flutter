 

 
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
      
   @override
   Widget build(BuildContext context) {
     return Scaffold(

       appBar: AppBar(
         title: Text("AppBar")
       ),
       // bottomSheet: Text("SSSSS"), 

     /*  floatingActionButton: IconButton(icon: Icon(Icons.message,
       color: Colors.red[900],
       
       size: 40,), 
       splashColor: Colors.yellow[800],
         onPressed: (){}),
         floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
         */

         bottomNavigationBar: BottomAppBar(child: Row(
           children: <Widget>[
            Expanded(
               child: SizedBox(
                child: InkWell(
                  
                  onTap: (){},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                    Icon(
                      
                      Icons.search,
                      size: 30,
                      color: Colors.red,
                      

                    ),
                    Text("Searh")
                  ],)
                )
                 
               ),
             ),
              Expanded(
               child: SizedBox(
                child: InkWell(
                  
                  onTap: (){},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                    Icon(
                      
                      Icons.search,
                      size: 30,
                      color: Colors.red,
                      

                    ),
                    Text("Searh")
                  ],)
                )
                 
               ),
             ),
              Expanded(
               child: SizedBox(
                child: InkWell(
                  
                  onTap: (){},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                    Icon(
                      
                      Icons.search,
                      size: 30,
                      color: Colors.red,
                      

                    ),
                    Text("Searh")
                  ],)
                )
                 
               ),
             ),
           ],)

           
         ),
       
     );
 
       
     
   }
 }
