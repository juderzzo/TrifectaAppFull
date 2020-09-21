import 'package:flutter/material.dart';
import 'package:titled_navigation_bar/titled_navigation_bar.dart';
import '../all.dart';
import 'classes_page.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //Future<List> futureAlbum;
  Color trifectaBlue = Color.fromRGBO(108, 206, 244, 1);
  final pageNames = ["Classes", "Profile", "Schedule"];
  final pageIcons = [Icons.school, Icons.person, Icons.date_range];
  final pages = [
    ClassesPage(),
    ProfileRoute(),
    ScheduleRoute(),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: pages[selectedIndex],
      bottomNavigationBar: TitledBottomNavigationBar(
          currentIndex: selectedIndex, // Use this to update the Bar giving a position
          onTap: (index) {
            setState(() => selectedIndex = index);
          },
          items: [
            for (int i = 0; i < pageNames.length; i++)
              TitledNavigationBarItem(title: Text(pageNames[i]), icon: pageIcons[i]),
          ]),
    );
  }
}

//HEADER
