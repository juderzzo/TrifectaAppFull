import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../all.dart';

class FilterRoute extends StatefulWidget {
  final String type;
  FilterRoute({Key key, this.type}) : super(key: key);

  @override
  _FilterRouteState createState() => _FilterRouteState();

}

class _FilterRouteState extends State<FilterRoute>{

  @override
  void initState() {
    super.initState();
  }

  //Future<List> futureAlbum;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        child: Column(
          children: [
            AppBar(
              backgroundColor: Colors.black,
              //title: Header(),
              title: 
              Row(
                children: [
                //Spacer(),
                FlatButton(
                child: Text("Cancel", style: GoogleFonts.montserrat(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w200,
                                          ),
                        ),

                        onPressed: () {
                  Navigator.pop(context);
                      },
                ),

                Spacer(flex: 2),
                Text(widget.type, style: GoogleFonts.montserrat(
                                            color: Colors.white,
                                            fontSize: 30,
                                            fontWeight: FontWeight.w300,
                                          ),
                        ),

                Spacer(flex: 3),

                Text("type", style: GoogleFonts.montserrat(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w200,
                                          ),
                        ),

                Spacer(),


                ]
              ),
              ),
            
          ]
        )
      )
    );
  }
}