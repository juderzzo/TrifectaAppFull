import 'dart:ui';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:agora_rtc_engine/rtc_engine.dart';
import 'package:flutter/material.dart';
import 'package:Trifecta/landing/livestream.dart';
import '../all.dart';


class ScheduleComponent
{
  String date;
  List<ScheduleItem> scheduleItemList;

  ScheduleComponent({this.date, this.scheduleItemList});
}

class ScheduleItem
{
  String time;
  String intensity;
  String title;
  String trainer;
  bool done;
  var color;
  var textColor;

  ScheduleItem({this.time, this.intensity, this.title, this.trainer, this.done, this.color, this.textColor = Colors.black});
}

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

  List<String> workoutList = [
    'assets/images/workout_icons/svg/001-dumbbell.svg',
    'assets/images/workout_icons/svg/002-cardio.svg',
    'assets/images/workout_icons/svg/003-workout.svg',
    'assets/images/workout_icons/svg/006-workout.svg',
    'assets/images/workout_icons/svg/005-workout.svg'
  ];
  ListView _getWorkoutTypes()
  {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      itemCount: workoutList.length,
      itemBuilder:(BuildContext context, int index) 
      {
        return GestureDetector(
          onTap: () 
          {
          },
          child: Container(
            alignment: Alignment.center,
            width: 85,
            decoration: BoxDecoration(
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 36,
                  width: 36,
                  child: SvgPicture.asset(workoutList[index], color: Colors.white),
                ),
                Container(
                  margin: EdgeInsets.only(top: 4),
                  height: 25,
                  child: Text(
                    'workout',
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  )
                ),
              ],
            ),
          ),
        );
      }
    );
  }

  List<ScheduleComponent> scheduleList = [
    ScheduleComponent(
      date: 'Monday, September 21',
      scheduleItemList: [
        ScheduleItem(
          time: '00:00 xm',
          intensity: 'intensity',
          title: 'complete workout title',
          trainer: 'trainer name • type',
          done: false,
          color: Colors.blue,
        ),
        ScheduleItem(
          time: '00:00 xm',
          intensity: 'intensity',
          title: 'complete workout title',
          trainer: 'trainer name • type',
          done: false,
          color: Colors.blue,
        ),
        ScheduleItem(
          time: '00:00 xm',
          intensity: 'intensity',
          title: 'complete workout title',
          trainer: 'trainer name • type',
          done: false,
          color: Colors.yellow[600],
          textColor: Colors.black
        ),
      ]
    ),
    ScheduleComponent(
      date: 'Tuesday, Setember 22',
      scheduleItemList: [
        ScheduleItem(
          time: '00:00 xm',
          intensity: 'intensity',
          title: 'complete workout title',
          trainer: 'trainer name • type',
          done: false,
          color: Colors.blue,
        ),
        ScheduleItem(
          time: '00:00 xm',
          intensity: 'intensity',
          title: 'complete workout title',
          trainer: 'trainer name • type',
          done: false,
          color: Colors.red,
        ),
      ]
    ),
    ScheduleComponent(
      date: 'Wednesday, Setember 23',
      scheduleItemList: [
        ScheduleItem(
          time: '00:00 xm',
          intensity: 'intensity',
          title: 'complete workout title',
          trainer: 'trainer name • type',
          done: false,
          color: Colors.blue,
        ),
        ScheduleItem(
          time: '00:00 xm',
          intensity: 'intensity',
          title: 'complete workout title',
          trainer: 'trainer name • type',
          done: false,
          color: Colors.yellow[600],
        ),
        ScheduleItem(
          time: '00:00 xm',
          intensity: 'intensity',
          title: 'complete workout title',
          trainer: 'trainer name • type',
          done: false,
          color: Colors.blue,
        ),
      ]
    ),
  ];

  ListView _getSchedule()
  {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      physics: BouncingScrollPhysics(),
      itemCount: scheduleList.length,
      itemBuilder:(BuildContext context, int index) 
      {
        var section = List<Widget>();
        var iteration = 0;
        for (var schedItem in scheduleList[index].scheduleItemList) {
          bool drawTop = false;
          if (iteration == 0) drawTop = true;
          bool drawBot = false;
          if (iteration == scheduleList[index].scheduleItemList.length - 1) drawBot = true;
          
          section.add(
            Container(
              height: 80,
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(left: 10, right: 10),
              margin: EdgeInsets.only(bottom: 1),
              decoration: BoxDecoration(
                color: schedItem.color,
                borderRadius: BorderRadius.only(
                  topLeft: drawTop ? Radius.circular(12) : Radius.circular(0),
                  topRight: drawTop ? Radius.circular(12) : Radius.circular(0),
                  bottomLeft: drawBot ? Radius.circular(12) : Radius.circular(0),
                  bottomRight: drawBot ? Radius.circular(12) : Radius.circular(0),
                ),
              ),
              child: Row(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(right: 10),
                    width: 75,
                    child: Text(
                      schedItem.time,
                      style: TextStyle(color: Colors.black, fontSize: 18, fontFamily: 'montserrat', fontWeight: FontWeight.w400),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            schedItem.intensity,
                            style: TextStyle(fontSize: 16, color: schedItem.textColor),
                          ),
                        ),
                        Container(
                          child: Text(
                            schedItem.title,
                            style: TextStyle(fontSize: 20, color: schedItem.textColor, fontWeight: FontWeight.w600),
                          ),
                        ),
                        Container(
                          child: Text(
                            schedItem.trainer,
                            style: TextStyle(fontSize: 16, color: schedItem.textColor),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 42,
                    child: Icon(Icons.panorama_fish_eye , color: Colors.white, size: 30,),
                  ),
                ],
              ),
            ),
          ); 
          iteration++;
        }
        return GestureDetector(
          onTap: () 
          {
          },
          child: Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            margin: EdgeInsets.only(bottom: 16),
            decoration: BoxDecoration(
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Text(
                    scheduleList[index].date,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Column(
                  children: section,
                )
              ],
            ),
          ),
        );
      }
    );
  }
  
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: <Widget>[
            Header(),
            Container(
              decoration: BoxDecoration(
                color: Colors.black
              ),
              child: TableCalendar(
                calendarController: _calendarController,
                headerVisible: false,
                initialCalendarFormat: CalendarFormat.week,
                availableCalendarFormats: const {CalendarFormat.week: 'Week'},
                daysOfWeekStyle: DaysOfWeekStyle(
                  weekdayStyle: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontSize: 16
                  ),
                  weekendStyle: GoogleFonts.montserrat(
                    color: Colors.grey,
                  )
                ),
                headerStyle: HeaderStyle(

                ),
                calendarStyle: CalendarStyle(
                  outsideStyle: TextStyle(
                    color: Colors.grey
                  ),
                  outsideWeekendStyle: TextStyle(
                    color: Colors.grey
                  ),
                  selectedStyle: TextStyle(
                    color: Colors.blue
                  ),
                  weekdayStyle: TextStyle(
                    color: Colors.white
                  ),
                  weekendStyle: TextStyle(
                    color: Colors.grey
                  ),
                  todayColor: Colors.transparent,
                  selectedColor: Colors.white,
                  contentPadding: EdgeInsets.only(top: 4),
                  highlightToday: false,
                ),
              )
            ),
            Container(
              height: 75,
              padding: EdgeInsets.only(left: 30),
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.white),)
              ),
              child:  _getWorkoutTypes()
            ),
            Expanded(
              child: Container(
                width: w,
                padding: EdgeInsets.only(top: 24),
                alignment: Alignment.topLeft,
                child: _getSchedule()
              ),
            ),





/*          Container(
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
            ) */
          ],
        )
      )
    );

  }
}
