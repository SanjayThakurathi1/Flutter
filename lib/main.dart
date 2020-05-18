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
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  String newvv = "default";
  String  newv;
  void retr(){
    setState(() {
        newvv=newv;
    });
  }

  @override
  Widget build(BuildContext context) {
    
              
        return Scaffold(
          appBar: AppBar(
            title: Text(
              "New App",
              style: TextStyle(
                color: Colors.red,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("$newvv"),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  onChanged: (text){
                    newv = text;
                  },
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.account_box),
                    border: OutlineInputBorder(),
                     hintText: "User Name",
                    //labelText: "User name",
                    //helperText: "User name",
                  ),
                  maxLength: 25,
                ),
              )
        ,
      
        ],
      ),
    );
  }
}
