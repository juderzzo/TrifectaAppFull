
import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'classes.dart';



class Constants{
  static const String Classes = 'Classes';
  static const String Badges = 'Badges';
  static const String Challenges = 'Challenges';
  static const String Schedule = 'Schedule';
  static const String Profile = 'Profile';
  static const List<String> choices = <String> [
    Classes,
    Badges,
    Challenges,
    Schedule,
    Profile
  ];
}
class HomeRoute extends StatefulWidget {
  HomeRoute({Key key}) : super(key: key);
  @override
  _HomeRouteState createState() => _HomeRouteState();
}

class _HomeRouteState extends State<HomeRoute>{

  @override
  void initState() {
    super.initState();
  }

  void choiceAction(String choice){
    if(choice == Constants.Profile){
      Navigator.pop(context);
    }

    //just reroute to all of the pages in the navbar
  }



  //Future<List> futureAlbum;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(

              child: Container(
                      decoration: BoxDecoration(
                        color:Colors.black
                      ),

                      width: 800,

                      // image:DecorationImage(
                      //   image: AssetImage("assets/images/signup.jpg"), fit: BoxFit.cover,
                      // ),
                      //),



                      child: Container(
                          width: 300,

                          child: Column(

                            children:[
                              Container(
                                height: 100,
                                child: Row(
                                  //padding: EdgeInsets.fromLTRB(0, 33, 0, 0),
                                children:[
                                  Spacer(),



                                  SizedBox(width: 80),

                                    Container(
                                        height: 120,
                                        width: 200,
                                        child: ConstrainedBox(
                                        constraints: BoxConstraints.expand(),
                                        child: FlatButton(
                                            onPressed: null,
                                            padding: EdgeInsets.fromLTRB(0, 0, 0, 12),
                                            child: Image.asset("assets/images/Dlogo.png")))),
                                  Spacer(),
                                  Container(
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 24),
                                  child: PopupMenuButton<String>(
                                      icon: Icon(Icons.menu, color: Colors.white, size: 35),
                                      onSelected: choiceAction,
                                      itemBuilder: (BuildContext context){
                                        return Constants.choices.map((String choice){
                                          return PopupMenuItem<String>(
                                            value: choice,
                                            child: Text(choice),
                                          );
                                        }).toList();
                                      }
                                  ),
                                  ),
                                  SizedBox(width:30),


                        ]
                              ),
        ),


                            Center(





                               child: Container(
                                  height: 550,
                                  padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                                  child: Column(
                                    children: [
                                      Container(
                                        width: 340,
                                        height: 170,

                                        decoration: BoxDecoration(
                                          border: Border.all(color: Colors.redAccent),
                                          borderRadius: BorderRadius.circular(5),
                                            image: DecorationImage(
                                                image: AssetImage("assets/images/sport.jpg"), fit: BoxFit.cover),

                                        ),
                                        child: Column(
                                          children: [
                                          SizedBox(height: 10),
                                            Row(
                                              children: [
                                                SizedBox(width: 200),


                                                Text("Sport",
                                                  style: GoogleFonts.openSans(
                                                    textStyle: TextStyle(
                                                        //fontWeight: FontWeight.bold,
                                                        color: Colors.white,
                                                        fontSize: 25
                                                      //fontSize:
                                                    ),
                                                  ),
                                                ),
                                            ],

                                            ),
                                            SizedBox(height: 19),
                                            Row(
                                                children: [
                                                  //Spacer(),
                                                  SizedBox(width: 200),
                                                  Text("Boxing, Hiit, \nand Running",
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 15
                                                      )),
                                                ]
                                            ),
                                            SizedBox(height: 20),

                                            Row(
                                              children: [
                                                SizedBox(width: 150),
                                                Container(
                                                  height: 25,
                                                  child: FlatButton(
                                                    color: Colors.deepOrange,
                                                    textColor: Colors.white,
                                                    disabledColor: Colors.grey,
                                                    disabledTextColor: Colors.black,
                                                    //padding: EdgeInsets.all(8.0),
                                                    splashColor: Colors.greenAccent,

                                                    onPressed: () {
                                                      Navigator.push(
                                                        context,
                                                        MaterialPageRoute(builder: (context) => ClassRoute()),
                                                      );
                                                    },
                                                    child: Text(
                                                      "See Sport",
                                                      style: TextStyle(fontSize: 15.0),
                                                    ),
                                                  )
                                                )

                                              ]
                                            ),

                                            SizedBox(height:13),





                                          ]
                                        ),

                                      ),
                                      //SizedBox(height: 100),




                                      SizedBox(height: 5),
                                      Container(
                                        width: 340,
                                        height: 170,

                                        decoration: BoxDecoration(
                                          border: Border.all(color: Colors.yellow),
                                          borderRadius: BorderRadius.circular(5),
                                          image: DecorationImage(
                                              image: AssetImage("assets/images/body-yellow.png"), fit: BoxFit.cover),

                                        ),
                                        child: Column(
                                            children: [
                                              SizedBox(height: 10),
                                              Row(
                                                children: [
                                                  SizedBox(width: 20),


                                                  Text("Body",
                                                    style: GoogleFonts.openSans(
                                                      textStyle: TextStyle(
                                                        //fontWeight: FontWeight.bold,
                                                          color: Colors.white,
                                                          fontSize: 25
                                                        //fontSize:
                                                      ),
                                                    ),
                                                  ),
                                                ],

                                              ),
                                              SizedBox(height: 19),
                                              Row(
                                                  children: [
                                                    //Spacer(),
                                                    SizedBox(width: 20),
                                                    Text("Nutrition, Recovery,\n and Lifestyle",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 15
                                                        )),
                                                  ]
                                              ),
                                              SizedBox(height: 20),

                                              Row(
                                                  children: [
                                                    SizedBox(width: 220),
                                                    Container(
                                                        height: 25,
                                                        child: FlatButton(
                                                          color: Colors.yellow[700],
                                                          textColor: Colors.white,
                                                          disabledColor: Colors.grey,
                                                          disabledTextColor: Colors.black,
                                                          //padding: EdgeInsets.all(8.0),
                                                          splashColor: Colors.greenAccent,
                                                          onPressed: () {
                                                            /*...*/
                                                          },
                                                          child: Text(
                                                            "See Body",
                                                            style: TextStyle(fontSize: 15.0),
                                                          ),
                                                        )
                                                    )

                                                  ]
                                              ),







                                            ]
                                        ),

                                      ),



                                      SizedBox(height: 5),

                                      Container(
                                        width: 340,
                                        height: 170,

                                        decoration: BoxDecoration(
                                          border: Border.all(color: Colors.lightBlue),
                                          borderRadius: BorderRadius.circular(5),
                                          image: DecorationImage(
                                              image: AssetImage("assets/images/mind2-blue.png"), fit: BoxFit.cover),

                                        ),
                                        child: Column(
                                            children: [
                                              SizedBox(height: 5),
                                              Row(
                                                children: [
                                                  SizedBox(width: 20),


                                                  Text("Mind",
                                                    style: GoogleFonts.openSans(
                                                      textStyle: TextStyle(
                                                        //fontWeight: FontWeight.bold,
                                                          color: Colors.white,
                                                          fontSize: 25
                                                        //fontSize:
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(width:100),

                                                  Text("\nNutrition, Recovery,\n and Running",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 15
                                                      )),
                                                ],

                                              ),


                                              SizedBox(height: 70),

                                              Row(
                                                  children: [
                                                    SizedBox(width: 20),
                                                    Container(
                                                        height: 25,
                                                        child: FlatButton(
                                                          color: Colors.lightBlueAccent,
                                                          textColor: Colors.white,
                                                          disabledColor: Colors.grey,
                                                          disabledTextColor: Colors.black,
                                                          //padding: EdgeInsets.all(8.0),
                                                          splashColor: Colors.greenAccent,

                                                          onPressed: () {
                                                            /*...*/
                                                          },
                                                          child: Text(
                                                            "See Mind",
                                                            style: TextStyle(fontSize: 15.0),
                                                          ),
                                                        )
                                                    )

                                                  ]
                                              ),

                                              SizedBox(height:13),





                                            ]
                                        ),

                                      ),




                                    ]

                                  ),
                                ),






                    ),
                             //Spacer(),
                ],
                ),
            ),
        ),
    ),

    );


  }
}