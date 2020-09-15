import 'dart:async';
import 'dart:convert';
import 'package:agora_rtc_engine/rtc_engine.dart';
import 'package:flutter/material.dart';
import 'package:Trifecta/landing/livestream.dart';
import 'package:http/http.dart' as http;
import '../main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'homepage.dart';

class ClassRoute extends StatefulWidget {
  ClassRoute({Key key}) : super(key: key);

  @override
  _ClassRouteState createState() => _ClassRouteState();
}

class _ClassRouteState extends State<ClassRoute> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.red[900],
            title: Text(
              "Sport",
              style: GoogleFonts.openSans(
                textStyle: TextStyle(
                    //fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 28
                    //fontSize:
                    ),
              ),
            ),
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.drag_handle),
                  text: 'Boxing',
                ),
                Tab(
                  icon: Icon(Icons.fitness_center),
                  text: 'H.I.I.T',
                ),
                Tab(
                  icon: Icon(Icons.directions_run),
                  text: 'Running',
                ),
              ],
            ),
            // title: Text('Isolate Example'),
          ),
          body: TabBarView(
            children: [
              Center(
                  child: Column(children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                    width: 360,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.redAccent[700],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: <Widget>[
                        FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LiveStreamPage(
                                    channelName: "test",
                                    role: ClientRole.Audience,
                                  ),
                                ),
                              );
                            },
                            child: Text(
                              "Beginner Class",
                              style: GoogleFonts.openSans(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ))
                      ],
                    )),
              ])),
              Text("2"),
              Text("3"),
            ],
          ),
        ),
      ),
    );
  }
}
