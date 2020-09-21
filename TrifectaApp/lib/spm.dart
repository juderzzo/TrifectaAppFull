import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'all.dart';

class Class extends StatefulWidget {
  final String name;
  final String image;
  final String instructor;

  const Class({Key key, this.name, this.image, this.instructor})
      : super(key: key);
  @override
  _ClassState createState() => _ClassState();
}

class _ClassState extends State<Class> {
  @override
  void initState() {
    super.initState();
  }

  //Parameters
  final String type = "Sport";
  //final String image = "assets/images/sport2.png";
  //final String instructor = "Paul Bamba";
  //final String name =  "Beginner Boxing";
  final int weekly = 2;
  //image will have to be an input parameter

  @override
  Widget build(BuildContext context) {
    //final Class args = ModalRoute.of(context).settings.arguments;
    return Container(
        color: Colors.black,
        // ^^ will be based on type
        child: Column(children: [
          SizedBox(height: MediaQuery.of(context).size.height / 100),
          FlatButton(
              padding: EdgeInsets.all(0),
              child: Container(
                  height: MediaQuery.of(context).size.height / 5,
                  width: MediaQuery.of(context).size.width - 10,

                  //width: 100,
                  decoration: BoxDecoration(
                    //color: Colors.black,
                    image: DecorationImage(
                      image: AssetImage(widget.image),
                      //fit: BoxFit.cover,
                    ), //Image.asset(image, fit: BoxFit.cover)
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Row(children: [
                    Spacer(flex: 4),
                    Column(children: [
                      Spacer(),
                      Text(
                        widget.name,
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                      Text(
                        widget.instructor,
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                      Spacer(),
                    ]),
                    Spacer()
                  ])))
        ]));
  }
}

//Bottom Bar


class Header extends StatefulWidget {
  Header({Key key}) : super(key: key);
  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  void initState() {
    super.initState();
  }

  void choiceAction(String choice) {
    if (choice == Constants.Profile) {
      profileRouter();
    }

    if (choice == Constants.Schedule) {
      scheduleRouter();
    }

    if (choice == Constants.Classes) {
      classRouter();
    }

    if (choice == Constants.Challenges) {
      challengeRouter();
    }
  }

  void scheduleRouter() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ScheduleRoute()),
    );
  }

  void challengeRouter() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ChallengesRoute()),
    );
  }

  void classRouter() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HomeScreen()));
  }

  void profileRouter() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ProfileRoute()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.black),
      height: 50,
      child: Row(
        //padding: EdgeInsets.fromLTRB(0, 33, 0, 0),
        children: [
          Spacer(),

          //SizedBox(width: 80),

          Container(
            height: 50,
            width: 200,
            child: Image.asset("assets/images/Dlogo.png"),
          ),

          Spacer(),
        ],
      ),
    );
  }
}
