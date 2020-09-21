import 'package:flutter/material.dart';
import '../all.dart';

class Constants {
  static const String Classes = 'Classes';
  static const String Challenges = 'Progress';
  static const String Schedule = 'Schedule';
  static const String Profile = 'Profile';
  static const List<String> choices = <String>[
    Classes,
    Challenges,
    Schedule,
    Profile
  ];
}

final List<Tab> myTabs = <Tab>[
  Tab(text: 'Sport'),
  Tab(text: 'Body'),
  Tab(text: 'Mind'),
];

class ClassesPage extends StatefulWidget {
  ClassesPage({Key key}) : super(key: key);
  @override
  _ClassesPageState createState() => _ClassesPageState();
}

class _ClassesPageState extends State<ClassesPage> {
  @override
  void initState() {
    super.initState();
  }

  //Future<List> futureAlbum;
  Color trifectaBlue = Color.fromRGBO(108, 206, 244, 1);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: TabBarView(
        controller:  tabController,
        children: [
          ListView(shrinkWrap: true, children: <Widget>[
            Class(
                name: "Beginner Boxing",
                instructor: "Paul Bamba",
                image: "assets/images/sport2.png"),
            Class(
                name: "Beginner H.I.I.T",
                instructor: "Gardea Christian",
                image: "assets/images/sport3.png"),
            Class(
                name: "Beginner Running",
                instructor: "Paul Bamba",
                image: "assets/images/sport5.png"),
            Class(
                name: "Advanced Boxing",
                instructor: "Paul Bamba",
                image: "assets/images/sport4.png"),

            //Class(name: "Beginner Boxing", instructor: "Paul Bamba", image: "assets/images/sport2.png" ),
            //Class(name: "Beginner Boxing", instructor: "Paul Bamba", image: "assets/images/sport2.png" ),
            // Class(),
            //   Class(),
            //   Class()
          ]),
          Class(
              name: "Beginner Boxing",
              instructor: "Paul Bomba",
              image: "assets/images/sport2.png"),
          Class(
              name: "Beginner Boxing",
              instructor: "Paul Bomba",
              image: "assets/images/sport2.png"),
        ],
      ), // WE have to make this send an input to the spm file
    );
  }
}

//HEADER
