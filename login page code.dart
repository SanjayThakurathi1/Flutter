 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
 


 void main() => runApp(Myapp());

 class Myapp extends StatefulWidget {
   @override
   _MyappState createState() => _MyappState();
 }
 
 class _MyappState extends State<Myapp> {
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       theme: ThemeData.dark(),
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
      resizeToAvoidBottomPadding: false,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
         Padding(padding: EdgeInsets.all(10),
         child: Image.asset("assests/images/b2.jpeg",
          color: Colors.black26,
          colorBlendMode: BlendMode.darken,
          fit: BoxFit.cover,),),

          
          
            
             Column(

              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
              Image.asset("assests/images/login.jpg",
              height: 200.0,
              width: 200.0,),

              Padding(padding: EdgeInsets.all(20),
              child: Stack(
                children: <Widget>[
                  SingleChildScrollView( 
                  child: Container(
                   // margin: EdgeInsets.all(0),
                    height: 350,
                    width: 350,
                    color: Colors.green[800],
            
                    child: Column(
                      
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        
                        
                       Padding(padding: EdgeInsets.only(top: 35,left: 30,right: 30,bottom: 0),
                       child:  TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.account_box),
                            hintText: "User Name",

                            border: OutlineInputBorder(
                          
                            ),
                          ),
                    
                        ),),
                        Padding(padding: EdgeInsets.only(bottom: 0,left: 30,right: 30, top: 35),
                        child:  TextField(
                          
                          decoration: InputDecoration(
                            hoverColor: Colors.blue,
                            focusColor: Colors.blue[800],
                            prefixIcon: Icon(Icons.lock),
                            hintText: "Password",

                            border: OutlineInputBorder(
                          
                            ),
                          ),
                    
                        ),),
                       Padding(padding: EdgeInsets.only(top:2, bottom:1),
                      child:  Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                         Padding(padding: EdgeInsets.only(right:20, bottom:5,top: 20,left: 0,
                        ),
                         child:    Text("Forget password ?",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        
                      ),),
                         ),
                    
                          ],
                        )),
                       Padding(padding: EdgeInsets.only(top: 0,bottom: 60,left: 30,right: 30),
                       child:  MaterialButton(onPressed: () {
                          
                        },
                        minWidth: 250,
                        splashColor: Colors.yellow[800],
                        color: Colors.blue[800],
                        child: Text("Login",
                        style: TextStyle(
                          
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),),),)


                          
                          

                        
                        
                         
                    
                      
                      ],
                   ), 
                    
                  ),),
                ],

              ),)
            ],
           
              

            ),
            
          

        ],
      ),

      
      
    );
  }


}