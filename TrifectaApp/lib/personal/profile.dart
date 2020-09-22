import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:social_media_buttons/social_media_icons.dart';
import 'package:table_calendar/table_calendar.dart';
import '../all.dart';

class ProfileRoute extends StatefulWidget {
  ProfileRoute({Key key}) : super(key: key);
  @override
  _ProfileRouteState createState() => _ProfileRouteState();
}


class _ProfileRouteState extends State<ProfileRoute>{
  bool _emails = true;
  bool _push = false;
  @override
  void initState() {
    super.initState();
    _calendarController = CalendarController();
  }
  CalendarController _calendarController;
  static final String path = "lib/src/pages/settings/settings2.dart";
  final TextStyle whiteText = TextStyle(
    color: Colors.white,
  );
  final TextStyle greyTExt = TextStyle(
    color: Colors.grey.shade400,
  );
  Color gunmetal = Color(0xFF2A3439);
  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.black, gunmetal])),
              child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              Header(),
              Expanded(
                child: CustomScrollView(
                  slivers: [
                    SliverAppBar(
                      excludeHeaderSemantics: true,
                      leading: Container(),
                      automaticallyImplyLeading: false,
                      toolbarHeight: 60,
                      expandedHeight: 240,
                      pinned: true,
                      backgroundColor: Colors.black,
                      flexibleSpace: FlexibleSpaceBar(
                        centerTitle: true,
                        title: Column(
                          children: [
                            Container(
                              height: 44,
                              /* color: Colors.red, */
                              alignment: Alignment.topCenter,
                              padding: EdgeInsets.only(top: 20),
                              child: /* Container(
                                width: 42,
                                height: 42,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(Radius.circular(100))
                                ),
                                child: Icon(Icons.person, size: 32,),
                              ), */
                              Text('Username', style: TextStyle(fontSize: 24),),
                            ),
                          ],
                        ),
                        background: Column(
                          children: [
                            Container(
                              height: 140,
                              /* color: Colors.red, */
                              alignment: Alignment.topCenter,
                              padding: EdgeInsets.only(top: 20),
                              child: Container(
                                width: 75,
                                height: 75,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(Radius.circular(75))
                                ),
                                child: Icon(Icons.person, size: 50,),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 6),
                              height: 30,
                              alignment: Alignment.topCenter,
                              child: Text(
                                'Firstname Lastname',
                                style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w100
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 12),
                              height: 30,
                              alignment: Alignment.topCenter,
                              //child: Text(
                                //'city state location',
                                //style: GoogleFonts.montserrat(
                                 // color: Colors.white60,
                                 // fontSize: 18
                                //),
                              //),
                            ),
                            /* Container(
                              margin: EdgeInsets.only(bottom: 24),
                              alignment: Alignment.center,
                              child: Container(
                                alignment: Alignment.center,
                                width: 120,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(18)
                                ),
                                child: Text(
                                  'add tags',
                                  style: GoogleFonts.montserrat(
                                    color: Colors.black,
                                    fontSize: 18
                                  ),
                                ),
                              ),
                            ), */
                           
                          ],
                        ),
                      ),
                    ),
                    SliverFillRemaining(
                      child: SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 18),
                              padding: EdgeInsets.only(left: 20, right: 20),
                              child: Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.only(left: 20, right: 20),
                                height: 48,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12)
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 50,
                                      child: Icon(SocialMediaIcons.snapchat_ghost)
                                    ),
                                    Container(
                                      width: 50,
                                      child: Icon(SocialMediaIcons.facebook)
                                    ),
                                    Container(
                                      width: 50,
                                      child: Icon(SocialMediaIcons.instagram)
                                    ),
                                    Container(
                                      width: 50,
                                      child: Icon(SocialMediaIcons.twitter)
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 20, left: 20),
                              margin: EdgeInsets.only(bottom: 16),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text('Workouts', style: TextStyle(color: Colors.white),),
                                      Expanded(child: Container()),
                                      
                                    ],
                                  ),
                                  Container(height: 10,),
                                  Container(
                                    height: 200,
                                    padding: EdgeInsets.only(top: 12),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(12)
                                    ),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text('000',style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),),
                                            Container(width: 10,),
                                            Text('Total \nWorkouts', style: TextStyle( fontSize: 12),)
                                          ],
                                        ),
                                        Container(margin: EdgeInsets.only(top: 8, bottom: 16), height: 1, color: Colors.black,),
                                        Row(
                                          children: [
                                            Container(width: 30),
                                            ///Icon(Icons.error_outline, size: 36,),
                                            Container(width: 20),
                                            Text('Sport', style: TextStyle(fontSize: 24),),
                                            Expanded(child: Container(),),
                                            Text('000', style: TextStyle(fontSize: 24),),
                                            Container(width: 30)
                                          ],
                                        ),
                                        Container(height: 10),
                                        Row(
                                          children: [
                                            Container(width: 30),
                                            //Icon(Icons.error_outline, size: 36,),
                                            Container(width: 20),
                                            Text('Body', style: TextStyle(fontSize: 24),),
                                            Expanded(child: Container(),),
                                            Text('000', style: TextStyle(fontSize: 24),),
                                            Container(width: 30)
                                          ],
                                        ),
                                        Container(height: 10),
                                        Row(
                                          children: [
                                            Container(width: 30),
                                            //Icon(Icons.error_outline, size: 36,),
                                            Container(width: 20),
                                            Text('Mind', style: TextStyle(fontSize: 24),),
                                            Expanded(child: Container(),),
                                            Text('000', style: TextStyle(fontSize: 24),),
                                            Container(width: 30)
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 20, left: 20),
                              margin: EdgeInsets.only(bottom: 16),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text('30 Day Activity', style: TextStyle(color: Colors.white),),
                                      Expanded(child: Container()),
                                      Text('view >', style: TextStyle(color: Colors.white),)
                                    ],
                                  ),
                                  Container(height: 10,),
                                  Container(
                                    height: 340,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(12)
                                    ),
                                    child: TableCalendar(
                                      availableGestures: AvailableGestures.horizontalSwipe,
                                      initialCalendarFormat: CalendarFormat.month,
                                      availableCalendarFormats: const {CalendarFormat.month: 'Month'},
                                      calendarController: _calendarController,
                                      calendarStyle: CalendarStyle(
                                        selectedColor: Colors.blue,
                                        todayColor: Colors.yellow
                                      ),
                                    )
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 20, left: 20),
                              margin: EdgeInsets.only(bottom: 16),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text('Recent Achievments', style: TextStyle(color: Colors.white),),
                                      Expanded(child: Container()),
                                      Text('view >', style: TextStyle(color: Colors.white),)
                                    ],
                                  ),
                                  Container(height: 10,),
                                  Container(
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(12)
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              width: 60,
                                              height: 70,
                                              decoration: BoxDecoration(
                                                border: Border.all(color: Colors.black),
                                                borderRadius: BorderRadius.circular(8)
                                              ),
                                            ),
                                            Container(
                                              width: 60,
                                              height: 70,
                                              decoration: BoxDecoration(
                                                border: Border.all(color: Colors.black),
                                                borderRadius: BorderRadius.circular(8)
                                              ),
                                            ),
                                            Container(
                                              width: 60,
                                              height: 70,
                                              decoration: BoxDecoration(
                                                border: Border.all(color: Colors.black),
                                                borderRadius: BorderRadius.circular(8)
                                              ),
                                            ),
                                            Container(
                                              width: 60,
                                              height: 70,
                                              decoration: BoxDecoration(
                                                border: Border.all(color: Colors.black),
                                                borderRadius: BorderRadius.circular(8)
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                              ],
                            ),
                          ),
                            Container(
                              padding: EdgeInsets.only(right: 20, left: 20),
                              margin: EdgeInsets.only(bottom: 16),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text('Fitness Levels', style: TextStyle(color: Colors.white),),
                                      Expanded(child: Container()),
                                      Text('view >', style: TextStyle(color: Colors.white),)
                                    ],
                                  ),
                                  Container(height: 10,),
                                  Container(
                                    padding: EdgeInsets.only(left: 28),
                                    alignment: Alignment.centerLeft,
                                    margin: EdgeInsets.only(bottom: 16),
                                    height: 48,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(12)
                                    ),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text('9830', style: TextStyle(fontSize: 24, color: Colors.black, fontWeight: FontWeight.w300)),
                                        Container(width: 6,),
                                        Text('steps', style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w300))
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 28),
                                    alignment: Alignment.centerLeft,
                                    margin: EdgeInsets.only(bottom: 16),
                                    height: 48,
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(12)
                                    ),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text('1200', style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.w300)),
                                        Container(width: 6,),
                                        Text('calories burned', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w300))
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 28),
                                    alignment: Alignment.centerLeft,
                                    margin: EdgeInsets.only(bottom: 16),
                                    height: 48,
                                    decoration: BoxDecoration(
                                      color: Colors.yellow,
                                      borderRadius: BorderRadius.circular(12)
                                    ),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text('15km', style: TextStyle(fontSize: 24, color: Colors.black, fontWeight: FontWeight.w300)),
                                        Container(width: 6,),
                                        Text('distance', style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w300))
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 28),
                                    alignment: Alignment.centerLeft,
                                    margin: EdgeInsets.only(bottom: 16),
                                    height: 48,
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(12)
                                    ),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text('70bpm', style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.w300)),
                                        Container(width: 6,),
                                        Text('average heart rate', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w300))
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                        ],
                      ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
      /* Theme(
        data: Theme.of(context).copyWith(
          brightness: Brightness.dark,
          primaryColor: Colors.purple,
        ),
        child: DefaultTextStyle(
          style: TextStyle(
            color: Colors.white,
          ),
          child: 
          Column(
            children: [
            SingleChildScrollView(

            child: Column(
              children: <Widget>[

                const SizedBox(height: 30.0),
                Header(),
                Row(
                  children: <Widget>[
                    SizedBox(width: 10),
                    Container(
                      //padding: const EdgeInsets.all(32.0),
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white,
                          width: 2.0,
                        ),
                      ),
                      child: Icon(Icons.account_circle, size: 50),
                    ),
                    const SizedBox(width: 10.0),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Full Name",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                            ),
                          ),
                          Text(
                            "Location",
                            style: TextStyle(
                              color: Colors.grey.shade400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20.0),
                ListTile(
                  title: Text(
                    "Achievements",
                    style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                        //fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 25
                        //fontSize:
                      ),
                    ),
                  ),
                  subtitle: Text(
                    "English US",
                    style: greyTExt,
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.grey.shade400,
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: Text(
                    "Profile Settings",
                    style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                        //fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 25
                        //fontSize:
                      ),
                    ),
                  ),
                  subtitle: Text(
                    "Full Name",
                    style: greyTExt,
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.grey.shade400,
                  ),
                  onTap: () {},
                ),
                SwitchListTile(
                  title: Text(
                    "Email Notifications",
                    style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                        //fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 25
                        //fontSize:
                      ),
                    ),
                  ),

                    value: _emails,
                  onChanged: (val) {
                    setState(() {
                      _emails = val;
                    });
                  },
                ),
                SwitchListTile(
                  title: Text(
                    "Push Notifications",
                    style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                        //fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 25
                        //fontSize:
                      ),
                    ),
                  ),

                  value: _push,
                  onChanged: (val) {
                    setState(() {
                      _push = val;
                    });
                  },
                ),
                ListTile(
                  title: Text(
                    "Logout",
                    style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                        //fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 25
                        //fontSize:
                      ),
                    ),
                  ),
                  //add a warning message
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FirstRoute())
                    );
                  },
                ),
              ],
            ),
          ),
          Spacer(),
          
          ]
          ),
        ),
      ), 
    );*/
  }
}