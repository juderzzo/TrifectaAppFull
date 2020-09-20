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
  bool pressBoxing = false;
  bool pressHiit = false;
  bool pressRunning = false;
  String dropdownValue0 = 'Instructors (All)';
  String dropdownValue1 = 'Frequency (All)';
  

  //Future<List> futureAlbum;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        color: Colors.grey[400],
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
            //Button Row 1
            Row(
              children: [
                Spacer(),

            //Button 1
            Container(
              height: MediaQuery.of(context).size.height/13,
              width: MediaQuery.of(context).size.width * 5/16,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[300],
                
              ),

              child: FlatButton(
               
              //color: Colors.grey[300],
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
                color: pressBeginner ? Colors.white : Colors.grey[300],
                //color: pressAll ? Colors.grey[300] : Colors.white,
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
                color: Colors.grey[300],
                
              ),

              child: FlatButton(
               
              //color: Colors.grey[300],
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
                color: pressIntermediate ? Colors.white : Colors.grey[300],
                //color: pressAll ? Colors.grey[300] : Colors.white,
                onPressed: () => setState(() => pressIntermediate = !pressIntermediate),
              )

            ),

             Spacer(),

             Container(
              height: MediaQuery.of(context).size.height/13,
              width: MediaQuery.of(context).size.width * 5/16,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[300],
                
              ),

              child: FlatButton(
               
              //color: Colors.grey[300],
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
                color: pressExpert ? Colors.white : Colors.grey[300],
                //color: pressAll ? Colors.grey[300] : Colors.white,
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
                    color: Colors.grey[300],
                    
                  ),

                  child: FlatButton(
                  
                  //color: Colors.grey[300],
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
                    color: pressTaken ? Colors.white : Colors.grey[300],
                    //color: pressAll ? Colors.grey[300] : Colors.white,
                    onPressed: () => setState(() => pressTaken = !pressTaken),
                  )

                ),

                Spacer(),

                Container(
                  height: MediaQuery.of(context).size.height/13,
                  width: MediaQuery.of(context).size.width * 11/24,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[300],
                    
                  ),

                  child: FlatButton(
                  
                  //color: Colors.grey[300],
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
                    color: pressClasses ? Colors.grey[300] : Colors.white,
                    //color: pressAll ? Colors.grey[300] : Colors.white,
                    onPressed: () => setState(() => pressClasses = !pressClasses),
                  )

                ),

                Spacer(),



              ]
            ),


            //Button Row 3
            SizedBox(height: MediaQuery.of(context).size.height/50),

            Row(
              children: [
                Spacer(),

            //Button 1
            Container(
              height: MediaQuery.of(context).size.height/13,
              width: MediaQuery.of(context).size.width * 5/16,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[300],
                
              ),

              child: FlatButton(
               
              //color: Colors.grey[300],
              child: Center(
                child: Column(
                  children: [
                    Spacer(),
                    FaIcon(FontAwesomeIcons.allergies, size: 15, color: Colors.red,),
                    Spacer(),
                    Text("Boxing", style: GoogleFonts.montserrat(fontSize: 10, color: Colors.black,  fontWeight: FontWeight.w300,)),
                    Spacer(),


                  ]
                  
                )
              ),
                color: pressBoxing ? Colors.white : Colors.grey[300],
                //color: pressAll ? Colors.grey[300] : Colors.white,
                onPressed: () => setState(() => pressBoxing = !pressBoxing),
              )

            ),

            //Button 2
             Spacer(),

            Container(
              height: MediaQuery.of(context).size.height/13,
              width: MediaQuery.of(context).size.width * 5/16,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[300],
                
              ),

              child: FlatButton(
               
              //color: Colors.grey[300],
              child: Center(
                child: Column(
                  children: [
                    Spacer(),
                        
                    FaIcon(FontAwesomeIcons.dumbbell, size: 15, color: Colors.red,),
                    Spacer(),
                    Text("H.I.I.T", style: GoogleFonts.montserrat(fontSize: 10, color: Colors.black,  fontWeight: FontWeight.w300,)),
                    Spacer(),


                  ]
                  
                )
              ),
                color: pressHiit ? Colors.white : Colors.grey[300],
                //color: pressAll ? Colors.grey[300] : Colors.white,
                onPressed: () => setState(() => pressHiit = !pressHiit),
              )

            ),

             Spacer(),

             Container(
              height: MediaQuery.of(context).size.height/13,
              width: MediaQuery.of(context).size.width * 5/16,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[300],
                
              ),

              child: FlatButton(
               
              //color: Colors.grey[300],
              child: Center(
                child: Column(
                  children: [
                    Spacer(),
                     
                      
                        FaIcon(FontAwesomeIcons.running, size: 15, color: Colors.red,),
                        
                      
                    Spacer(),
                    Text("Running", style: GoogleFonts.montserrat(fontSize: 10, color: Colors.black,  fontWeight: FontWeight.w300,)),
                    Spacer(),


                  ]
                  
                )
              ),
                color: pressRunning ? Colors.white : Colors.grey[300],
                //color: pressAll ? Colors.grey[300] : Colors.white,
                onPressed: () => setState(() => pressRunning = !pressRunning),
              )

            ),
            Spacer()



              ]
            ),



            SizedBox(height: MediaQuery.of(context).size.height/19,),

            //Dropdown buttons
            Container(
            height: MediaQuery.of(context).size.height/13,
            width: MediaQuery.of(context).size.width * 18/20,
            
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
            ),
            

            child: DropdownButtonHideUnderline(
              
              child: Padding(
                padding: EdgeInsets.all(10),

              
            child: Scaffold(
              backgroundColor: Colors.white,

            body: DropdownButton<String>(
                value: dropdownValue0,
                isExpanded: true,
                icon: Icon(Icons.keyboard_arrow_down),
                iconSize: 24,
                //elevation: 16,
                style: GoogleFonts.montserrat(fontWeight: FontWeight.w300),
                underline: null,
                onChanged: (String newValue) {
                  setState(() {
                    dropdownValue0 = newValue;
                  });
                },
                items: <String>['Instructors (All)' , 'Paul Bamba', 'Insturctor 2 ', 'Instructor 3']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value, style: TextStyle(color: Colors.black)),
                  );
                }).toList(),
               )
            )
              ),
            ),

            ),

            SizedBox(height: MediaQuery.of(context).size.height/45,),

            Container(
            height: MediaQuery.of(context).size.height/13,
            width: MediaQuery.of(context).size.width * 18/20,
            
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
            ),
            

            child: DropdownButtonHideUnderline(
              
              child: Padding(
                padding: EdgeInsets.all(10),

              
            child: Scaffold(
              backgroundColor: Colors.white,

            body: DropdownButton<String>(
                value: dropdownValue1,
                isExpanded: true,
                icon: Icon(Icons.keyboard_arrow_down),
                iconSize: 24,
                //elevation: 16,
                style: GoogleFonts.montserrat(fontWeight: FontWeight.w300),
                underline: null,
                onChanged: (String newValue) {
                  setState(() {
                    dropdownValue1 = newValue;
                  });
                },
                items: <String>['Frequency (All)' , 'Weekly', 'Biweekly', 'Triweekly', 'Four days a week', 'Weekdays', '5 days a week', 'Every day']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value, style: TextStyle(color: Colors.black)),
                  );
                }).toList(),
               )
            )
              ),
            ),

            ),

            SizedBox(height: MediaQuery.of(context).size.height/45,),

            






              
            
          ]
        )
      )
    );
  }
}