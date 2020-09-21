import 'package:flutter/material.dart';
import 'package:agora_rtc_engine/rtc_engine.dart';
import 'package:Trifecta/landing/livestream.dart';
import 'package:table_calendar/table_calendar.dart';


class ClassesDescRoute extends StatefulWidget {
  ClassesDescRoute({Key key}) : super(key: key);
  @override
  _ClassesDescRouteState createState() => _ClassesDescRouteState();
}

class _ClassesDescRouteState extends State<ClassesDescRoute> {
  CalendarController _calendarController = new CalendarController();

  @override
  void initState() {
    super.initState();
    _calendarController = CalendarController();
  }



  //Future<List> futureAlbum;
  final String image = "assets/images/boxingClass.jpg";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: <Widget>[
          Container(
              foregroundDecoration: BoxDecoration(
                  color: Colors.black26
              ),
              height: 400,
              child: Image.asset(image, fit: BoxFit.contain)),
          SingleChildScrollView(
            padding: const EdgeInsets.only(top: 16.0,bottom: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 250),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:16.0),
                  child: Text(
                    "Beginner class \nBoxing",
                    style: TextStyle(color: Colors.white, fontSize: 28.0, fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  children: <Widget>[
                    const SizedBox(width: 16.0),

                    Spacer(),
                    IconButton(
                      color: Colors.white,
                      icon: Icon(Icons.check_box),
                      onPressed: () {},
                    )
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(32.0),
                  color: Colors.black,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.star,
                                      color: Colors.red,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.red,
                                    ),
                                    Icon(
                                      Icons.star_border,
                                      color: Colors.red,
                                    ),
                                    Icon(
                                      Icons.star_border,
                                      color: Colors.red,
                                    ),
                                    Icon(
                                      Icons.star_border,
                                      color: Colors.red,
                                    ),
                                  ],
                                ),

                                Text("Difficulty",style: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.grey
                                ),
                                )

                              ],
                            ),
                          ),
                          Column(
                            children: <Widget>[
                              Text("Biweekly", style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0
                              ),
                              ),

                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: 30.0),
                      SizedBox(
                        width: double.infinity,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                          color: Colors.red,
                          textColor: Colors.white,
                          child: Text("Go Now", style: TextStyle(
                              fontWeight: FontWeight.normal
                          ),),
                          padding: const EdgeInsets.symmetric(
                            vertical: 16.0,
                            horizontal: 32.0,
                          ),
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
                        ),
                      ),
                      const SizedBox(height: 30.0),
                      Text("Description".toUpperCase(), style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14.0,
                          color: Colors.white,
                      ),),
                      const SizedBox(height: 10.0),
                      Text(
                        "Lorem ipsum dolor sit, amet consectetur adipisicing elit. Ratione architecto autem quasi nisi iusto eius ex dolorum velit! Atque, veniam! Atque incidunt laudantium eveniet sint quod harum facere numquam molestias?", textAlign: TextAlign.justify, style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 14.0,
                          color: Colors.white
                      ),),
                      const SizedBox(height: 10.0),
                      Text(
                        "Lorem ipsum dolor sit, amet consectetur adipisicing elit. Ratione architecto autem quasi nisi iusto eius ex dolorum velit! Atque, veniam! Atque incidunt laudantium eveniet sint quod harum facere numquam molestias?", textAlign: TextAlign.justify, style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 14.0
                      ),),
                     Container(
                       decoration: BoxDecoration(color: Colors.grey),
                      child: TableCalendar(calendarController: _calendarController, calendarStyle: CalendarStyle(markersColor: Colors.white, todayColor: Colors.white,)
                     ),
                     )


                     // TableCalendar(calendarController: _calendarController,)

                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              centerTitle: true,
              title: Text("DETAIL",style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.normal
              ),),
            ),
          ),

        ],
      ),
    );
  }
}