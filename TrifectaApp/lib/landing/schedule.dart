import 'package:table_calendar/table_calendar.dart';

import 'homepage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'classes.dart';
import 'package:flutter/material.dart';
import 'package:agora_rtc_engine/rtc_engine.dart';
import 'package:flutter/material.dart';
import 'package:Trifecta/landing/livestream.dart';

class ScheduleRoute extends StatefulWidget {
  ScheduleRoute({Key key}) : super(key: key);
  @override
  _ScheduleRouteState createState() => _ScheduleRouteState();
}

class _ScheduleRouteState extends State<ScheduleRoute> {
  CalendarController _calendarController;

  @override
  void initState() {
    super.initState();
    _calendarController = CalendarController();
  }



  //Future<List> futureAlbum;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: <Widget>[
            Header(),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey
              ),

              child: TableCalendar(calendarController: _calendarController,)
            ),

            CustomScrollView(
              shrinkWrap: true,
              slivers: <Widget>[
                SliverPadding(
                  padding: const EdgeInsets.all(20.0),
                  sliver: SliverList(
                    delegate: SliverChildListDelegate(
                      <Widget>[
                        //pass all the classes through here
                        //example class
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
                                  "Beginner Class Boxing",
                                  style: GoogleFonts.openSans(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ))
                          ],
                        ),
                    ),

                    SizedBox(height: 15),


                    Container(
                      width: 360,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
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
                                  "Intermediate Class Yoga",
                                  style: GoogleFonts.openSans(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ))
                          ],
                        ),
                    ),







                      ],
                    ),
                  ),
                ),
              ],
            )



          ],
        )
      )
    );

  }
}
