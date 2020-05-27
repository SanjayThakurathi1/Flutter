import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const kinactivecolor = Colors.lightBlue;
const kactivecolor = Colors.red;
int height = 180;
int weight =65;
int age =22;

class Gender {
  Gendertype gend;
  Gender(this.gend);
}

enum Gendertype {
  Male,
  Female,
}

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  Gendertype selectedgender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text(" BMI Calculator"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                  child: Reusablewidget(
                onPress: () {
                  setState(() {
                    selectedgender = Gendertype.Male;
                  });
                },
                clr: selectedgender == Gendertype.Male
                    ? kactivecolor
                    : kinactivecolor,
                nchild:
                    Repeatcolumn(icon: FontAwesomeIcons.male, label: "MALE"),
              )),
              Expanded(
                child: Reusablewidget(
                  onPress: () {
                    setState(() {
                      selectedgender = Gendertype.Female;
                    });
                  },
                  clr: selectedgender == Gendertype.Female
                      ? kactivecolor
                      : kinactivecolor,
                  nchild: Repeatcolumn(
                      icon: FontAwesomeIcons.female, label: "FEMALE"),
                ),
              ),
            ],
          )),
          Expanded(
            child: Row(
              // crossAxisAlignment: CrossAxisAlignment.,
              children: <Widget>[
                Expanded(
                  child: Reusablewidget(
                      clr: kinactivecolor,
                      nchild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Textw(
                            st: "HEIGHT",
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            textBaseline: TextBaseline.alphabetic,
                            // crossAxisAlignment: CrossAxisAlignment.baseline,
                            children: <Widget>[
                              Textw(
                                st: height.toString(),
                              ),
                              Textw(
                                st: "cm",
                              ),
                            ],
                          ),
                          Slider(
                            value: height.toDouble(),
                            min: 130,
                            max: 230,
                            activeColor: Colors.red[800],
                            inactiveColor: Colors.black,
                            onChanged: (double newValue) {
                              setState(() {
                                height = newValue.round();
                              });
                            },
                          ),
                        ],
                      )),
                ),
              ],
            ),
          ),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: Reusablewidget(
                  clr: Colors.lightBlue,
                  nchild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          FloatingActionButton(
                          backgroundColor: Colors.black,
                            onPressed: () {
                              setState(() {
                                weight--;
                              });
                            },
                            child: Icon(
                              FontAwesomeIcons.minus,
                              color: Colors.red,
                            ),
                            splashColor: Colors.yellow,
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          FloatingActionButton(
                            backgroundColor: Colors.black,
                              child: Icon(
                                Icons.add,
                                color: Colors.red,
                              ),
                              splashColor: Colors.yellow,
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              }),
                        ],
                        
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(top: 50),
                          child: Column(
                            children: <Widget>[

                              Textw(st: weight.toString(),),
                              SizedBox(width: 30,),
                              Textw(
                            st: "WEIGHT(kg)",
                            al: TextAlign.end,
                          ),
                            ],
                          )
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Reusablewidget(clr: Colors.lightBlue,
                nchild: Column(
                  children: <Widget>[
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                      FloatingActionButton(
                        backgroundColor: Colors.black,
                        onPressed:(){
                          setState(() {
                            age--;

                          });
                        } 
                      ,
                      child: Icon(FontAwesomeIcons.minus,
                      color: Colors.red,),
                      splashColor: Colors.yellow,),
                      SizedBox(
                        width: 50,
                      ),
                      FloatingActionButton(
                        backgroundColor: Colors.black,
                        onPressed: (){
                          setState(() {
                            age++;
                          });
                        },
                      child: Icon(Icons.add,
                      color: Colors.red,),)
                      
                    ],),
                   Padding(padding: EdgeInsets.only(top:50),
                   child:  Column(
                      
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Textw(st: age.toString(),),
                        Textw(st: "AGE",),
                      ],
                    ),
                   ),

                  
                  ],
                ),
                ),
              ),
            ],
          )),
        ],
      ),
    );
  }
}

class Textw extends StatelessWidget {
  Textw({this.st, this.al});
  final String st;
  final TextAlign al;

  @override
  Widget build(BuildContext context) {
    return Text(
      st,
      textAlign: al,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
    );
  }
}

class Repeatcolumn extends StatelessWidget {
  /* const Repeatcolumn({
    Key key,
  }) : super(key: key);
*/
  Repeatcolumn({
    this.icon,
    this.label,
  });
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 85,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}

class Reusablewidget extends StatelessWidget {
  /* const Reusablewidget({
    Key key,
  }) : super(key: key);*/

  Reusablewidget({this.clr, this.nchild, this.onPress});
  final Color clr;
  final Widget nchild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.all(10),
        child: nchild,
        height: 200,
        width: 170,
        decoration: BoxDecoration(
          color: clr,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
