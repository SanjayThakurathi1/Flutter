  //checking internet connection in your device

 //import 'dart:io';
 import 'dart:async';

import 'package:connectivity/connectivity.dart';
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
       theme: ThemeData.dark(),
       color: Colors.green[800],
       home: Homepage(),
       
     );
   }
 }

 class Homepage extends StatefulWidget {
   @override
   _HomepageState createState() => _HomepageState();
 }
 
 class _HomepageState extends State<Homepage> {

   /*socket method for internet connection
    void checkcon() async {
      try{
        final result = await InternetAddress.lookup("google.com");
        if(result.isNotEmpty && result[0].rawAddress.isNotEmpty)
        {
          print("internet connected");

        }
        
      }
      on SocketException catch(_)
      {
        print("no internet connection");
      }
    }
    */

    /*checking internet connection using connectivity package
    void checkconn() async{
      var checkcon = await (Connectivity().checkConnectivity());
      if(checkcon==ConnectivityResult.none)
      {
        print("no internet connection");

      }
      else if(checkcon==ConnectivityResult.wifi)
      {
        print("wifi connected");

      }
      else if(checkcon==ConnectivityResult.mobile)
      {
        print("mobile data connected");
      }
    }
    */

    //To check connection everytime when the process is runnig app doesnot know at that time
     //tw variable


     StreamSubscription connectivitySubcription;

     ConnectivityResult oldres;

    @override
    void initState()
    {
      super.initState();
connectivitySubcription = Connectivity().onConnectivityChanged.listen((ConnectivityResult resnow)
{
  if(resnow==ConnectivityResult.none)
  {
    print("internet not Connected");

  }
  else if(oldres==ConnectivityResult.none)
  {  if(resnow==ConnectivityResult.wifi)
  {
    print("wifi connected");
  }
    else if(resnow==ConnectivityResult.mobile)
    {
    print("Mobile data connected");
    }
  }
  
    oldres = resnow;
}
);
}

    
    @override
    //used when u navigate to next page else it throw some error if it is not
    void dispose()
    {
      super.dispose();
      connectivitySubcription.cancel();
    }

   @override
   Widget build(BuildContext context) {
     return Container(

       child: RaisedButton(onPressed: (){},
       child: Text("chick here",
       style: TextStyle(
         fontWeight: FontWeight.bold,
         color: Colors.blue[800],
         fontSize: 30.0,
        
       ),)),
       
     );
   }
 }