import 'package:flutter/material.dart';
import 'package:titled_navigation_bar/titled_navigation_bar.dart';
import '../all.dart';
import 'classes_page.dart';

TabController tabController;

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
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
  void initState() {
    super.initState();
    tabController = TabController(length: myTabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: selectedIndex == 0
          ? AppBar(
              leading: Container(),
              backgroundColor: Colors.black,
              title: Container(
                height: 50,
                width: 200,
                child: Image.asset("assets/images/Dlogo.png"),
              ),
              bottom: TabBar(
                controller: tabController,
                tabs: myTabs,
              ),
            )
          : null,
      floatingActionButton: selectedIndex == 0
          ? FloatingActionButton.extended(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => FilterRoute(type: "Sport")),
                );
              },
              label: Text('Filter'),
              icon: Icon(Icons.search),
              backgroundColor: Colors.grey,
            )
          : null,
      backgroundColor: Colors.black,
      body: pages[selectedIndex],
      bottomNavigationBar: TitledBottomNavigationBar(
          currentIndex:
              selectedIndex, // Use this to update the Bar giving a position
          onTap: (index) {
            setState(() => selectedIndex = index);
          },
          items: [
            for (int i = 0; i < pageNames.length; i++)
              TitledNavigationBarItem(
                  title: Text(pageNames[i]), icon: pageIcons[i]),
          ]),
    );
  }
}

//HEADER
