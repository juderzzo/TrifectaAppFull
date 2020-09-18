
import 'package:Trifecta/landing/challenges.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:google_fonts/google_fonts.dart';
import'classDesc.dart';




class Class extends StatefulWidget {
  Class({Key key}) : super(key: key);
  @override
  _ClassState createState() => _ClassState();
}

class _ClassState extends State<Class> {

  @override
  void initState() {
    super.initState();
  }

  //Parameters
  final String type = "Sport";
  final String image = "assets/images/sport1.png";
  final String instructor = "Paul Bomba";
  final String name =  "Beginner Boxing";
  final int weekly = 2;
  //image will have to be an input parameter



  @override
  Widget build(BuildContext context) {
    return Container(
     // color: Color.fromRGBO(128,0,0, 1),
      // ^^ will be based on type
      child: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height/ 100),
          FlatButton(
            padding:EdgeInsets.all(0),
            child: Container(
              height: MediaQuery.of(context).size.height/5,
              width: MediaQuery.of(context).size.width - 10,
              
            //width: 100,
                  decoration: BoxDecoration(
                    color: Colors.black,
                      image: DecorationImage(
                        image: AssetImage(image),
                        //fit: BoxFit.cover,
                      ),//Image.asset(image, fit: BoxFit.cover)
                      borderRadius: BorderRadius.circular(4),
                      
                  ),

                  child: Row(
                    children: [
                      Spacer(flex: 4),
                      Column(
                        children: [
                          Spacer(),
                          Text(name, style: GoogleFonts.montserrat(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w100,
                                          ),
                            ),

                             Text(instructor, style: GoogleFonts.montserrat(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w100,
                                          ),
                            ),



                            Spacer(),

                        ]
                      ),
                      Spacer()
                    ]

                  )
            
          )
          )
        ]
      )
      

      
      
      
    );
  }
}