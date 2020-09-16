import 'package:table_calendar/table_calendar.dart';

import 'homepage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'classes.dart';
import 'package:flutter/material.dart';

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
        body: Column(
          children: <Widget>[
            Header(),
            TableCalendar(calendarController: _calendarController,)
          ],
        )
      )
    );

  }
}
