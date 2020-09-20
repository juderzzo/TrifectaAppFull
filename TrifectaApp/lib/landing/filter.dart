import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:math' as math;
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


  bool pressAll = false;
  bool pressBeginner = false;
  bool pressIntermediate = false;
  bool pressExpert = false;
  bool pressTaken = false;
  bool pressClasses = false;
  String dropdownValue = "Instructor";

  //Future<List> futureAlbum;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        color: Colors.grey[300],
        child: Column(
          children: [

            Container(
            height: MediaQuery.of(context).size.height/10,
            child: AppBar(
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

                Spacer(flex : 4),

                

                Spacer(),


                ]
              ),

              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height/50, ),
            Row(
              children: [
                Spacer(),

            //Button 1
            Container(
              height: MediaQuery.of(context).size.height/13,
              width: MediaQuery.of(context).size.width * 5/16,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[200],
                
              ),

              child: FlatButton(
               
              //color: Colors.grey[200],
              child: Center(
                child: Column(
                  children: [
                    Spacer(),
                    FaIcon(FontAwesomeIcons.tint, size: 15, color: Colors.blue,),
                    Spacer(),
                    Text("Beginner", style: GoogleFonts.montserrat(fontSize: 10, color: Colors.black,  fontWeight: FontWeight.w300,)),
                    Spacer(),


                  ]
                  
                )
              ),
                color: pressBeginner ? Colors.white : Colors.grey[200],
                //color: pressAll ? Colors.grey[200] : Colors.white,
                onPressed: () => setState(() => pressBeginner = !pressBeginner),
              )

            ),

            //Button 2
             Spacer(),

            Container(
              height: MediaQuery.of(context).size.height/13,
              width: MediaQuery.of(context).size.width * 5/16,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[200],
                
              ),

              child: FlatButton(
               
              //color: Colors.grey[200],
              child: Center(
                child: Column(
                  children: [
                    Spacer(),
                    Row(
                      children: [
                        Spacer(),
                        
                     FaIcon(FontAwesomeIcons.tint, size: 15, color: Colors.blue,),
                     FaIcon(FontAwesomeIcons.tint, size: 15, color: Colors.blue,),
                       
                       
                    Spacer(),
                      ]
                    ),

                    
                    
                    Spacer(),
                    Text("Intermediate", style: GoogleFonts.montserrat(fontSize: 10, color: Colors.black,  fontWeight: FontWeight.w300,)),
                    Spacer(),


                  ]
                  
                )
              ),
                color: pressIntermediate ? Colors.white : Colors.grey[200],
                //color: pressAll ? Colors.grey[200] : Colors.white,
                onPressed: () => setState(() => pressIntermediate = !pressIntermediate),
              )

            ),

             Spacer(),

             Container(
              height: MediaQuery.of(context).size.height/13,
              width: MediaQuery.of(context).size.width * 5/16,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[200],
                
              ),

              child: FlatButton(
               
              //color: Colors.grey[200],
              child: Center(
                child: Column(
                  children: [
                    Spacer(),
                     Row(
                      children: [
                        Spacer(),
                        FaIcon(FontAwesomeIcons.tint, size: 15, color: Colors.blue,),
                        FaIcon(FontAwesomeIcons.tint, size: 15, color: Colors.blue,),
                        FaIcon(FontAwesomeIcons.tint, size: 15, color: Colors.blue,),
                        Spacer(),
                      ]
                    ),
                    Spacer(),
                    Text("Expert", style: GoogleFonts.montserrat(fontSize: 10, color: Colors.black,  fontWeight: FontWeight.w300,)),
                    Spacer(),


                  ]
                  
                )
              ),
                color: pressExpert ? Colors.white : Colors.grey[200],
                //color: pressAll ? Colors.grey[200] : Colors.white,
                onPressed: () => setState(() => pressExpert = !pressExpert),
              )

            ),
            Spacer()



              ]
            ),

            SizedBox(height: MediaQuery.of(context).size.height/50),

            // Button Row 2
            Row(
              
              children: [
                Spacer(),
                Container(
                  height: MediaQuery.of(context).size.height/13,
                  width: MediaQuery.of(context).size.width * 11/24,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[200],
                    
                  ),

                  child: FlatButton(
                  
                  //color: Colors.grey[200],
                  child: Center(
                    child: Column(
                      children: [
                        Spacer(),
                        Row(
                          children: [
                            Spacer(),
                            Icon(Icons.person_outline, color: Colors.black,),
                            Spacer(),
                          ]
                        ),
                        Spacer(),
                        Text("Classes I've taken", style: GoogleFonts.montserrat(fontSize: 10, color: Colors.black,  fontWeight: FontWeight.w300,)),
                        Spacer(),


                      ]
                      
                    )
                  ),
                    color: pressTaken ? Colors.white : Colors.grey[200],
                    //color: pressAll ? Colors.grey[200] : Colors.white,
                    onPressed: () => setState(() => pressTaken = !pressTaken),
                  )

                ),

                Spacer(),

                Container(
                  height: MediaQuery.of(context).size.height/13,
                  width: MediaQuery.of(context).size.width * 11/24,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[200],
                    
                  ),

                  child: FlatButton(
                  
                  //color: Colors.grey[200],
                  child: Center(
                    child: Column(
                      children: [
                        Spacer(),
                        Row(
                          children: [
                            Spacer(),
                            Icon(Icons.school, color: Colors.black,),
                            Spacer(),
                          ]
                        ),
                        Spacer(),
                        Text("New Classes", style: GoogleFonts.montserrat(fontSize: 10, color: Colors.black,  fontWeight: FontWeight.w300,)),
                        Spacer(),


                      ]
                      
                    )
                  ),
                    color: pressClasses ? Colors.grey[200] : Colors.white,
                    //color: pressAll ? Colors.grey[200] : Colors.white,
                    onPressed: () => setState(() => pressClasses = !pressClasses),
                  )

                ),

                Spacer(),



              ]
            ),






              
            
          ]
        )
      )
    );
  }
}