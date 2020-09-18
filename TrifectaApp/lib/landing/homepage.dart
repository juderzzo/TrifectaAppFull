
import 'package:Trifecta/landing/challenges.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../main.dart';
import '../signup.dart';
import 'package:google_fonts/google_fonts.dart';
import 'classes.dart';
import 'schedule.dart';
import'profile.dart';
import 'classDesc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'spm.dart';


class Constants{
  static const String Classes = 'Classes';
  static const String Challenges = 'Progress';
  static const String Schedule = 'Schedule';
  static const String Profile = 'Profile';
  static const List<String> choices = <String> [
    Classes,
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

    final List<Tab> myTabs = <Tab>[
    Tab(text: 'Sport'),
    Tab(text: 'Body'),
    Tab(text: 'Mind'),
  ];

  @override
  void initState() {
    super.initState();
  }

  void scheduleRouter() {
      Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ScheduleRoute()),
    );
  }


  void choiceAction(String choice){
    if(choice == Constants.Profile){
      Navigator.pop(context);
    }

    if(choice == Constants.Schedule){
      scheduleRouter();
    }



    //just reroute to all of the pages in the navbar
  }



  //Future<List> futureAlbum;

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Container(
        
        color: Colors.black,
        child: Center(
          child: 
          SafeArea(
            child: 
              Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
                
             
              child: 
              Column(
                children: [
                  Container(
                  height: MediaQuery.of(context).size.height * 9/10,
                  width: MediaQuery.of(context).size.width,
                  child: DefaultTabController(
                    length: myTabs.length,
                    
                      child: Scaffold(
                        appBar: AppBar(
                          backgroundColor: Colors.black,
                          title: Header(),
                          bottom: TabBar(
                            tabs: myTabs,
                          ),
                        ),
                        body: TabBarView(
                          children: [
                            ListView(
                              shrinkWrap: true,
                              children: <Widget>[
                                Class(),
                                Class(),
                                  Class(),
                                  Class()
                              ]
                            ),
                            Class(),
                            Class(),

                          ]
                      
                        ), // WE have to make this send an input to the spm file
                      ),
                    )
                  ),

                  BottomBar()
                ]
              )
                
              ),
              
              //list of classes in Sport body and mind
              //Spacer(),
              //bottom bar
          )
        )

      )
    );
    
  } 
}


//HEADER 



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


  void classRouter(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => HomeRoute()));
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
      decoration: BoxDecoration(
        color:Colors.black
      ),
      height: 50,

      child: Row(
        //padding: EdgeInsets.fromLTRB(0, 33, 0, 0),
          children: [
            Spacer(),


            //SizedBox(width: 80),

            Container(
                height: 50,
                width: 200,
               
                child: Image.asset("assets/images/Dlogo.png")
                        ),

              Spacer()

                        
            //Spacer(),
            // Container(
            //   padding: EdgeInsets.fromLTRB(0, 0, 0, 24),
            //   child: PopupMenuButton<String>(
            //       icon: Icon(Icons.menu, color: Colors.white, size: 35),
            //       onSelected: choiceAction,
            //       itemBuilder: (BuildContext context) {
            //         return Constants.choices.map((String choice) {
            //           return PopupMenuItem<String>(
            //             value: choice,
            //             child: Text(choice),
            //           );
            //         }).toList();
            //       }
            //   ),
            // ),
            //SizedBox(width: 30),


          ]
      ),
    );
  }
}


class BottomBar extends StatefulWidget {
  BottomBar({Key key}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return 
    Container(
      height: 46,
      color: Colors.black,
    child: Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar Sample'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            title: Text(' ', style: TextStyle(fontSize: 1)),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text(' ', style: TextStyle(fontSize: 1)),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.date_range),
            title: Text(' ', style: TextStyle(fontSize: 1)),
          ),
         
          
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    ),
    );
  }
}
