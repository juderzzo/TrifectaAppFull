
import 'package:Trifecta/landing/challenges.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:google_fonts/google_fonts.dart';
import'classDesc.dart';




class Class extends StatefulWidget {
  final String name;
  final String image;
  final String instructor;


  Class({Key key}, this.name, this.image, this.instructor) : super(key: key);
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
  //final String image = "assets/images/sport2.png";
  //final String instructor = "Paul Bamba";
  //final String name =  "Beginner Boxing";
  final int weekly = 2;
  //image will have to be an input parameter



  @override
  Widget build(BuildContext context) {
    final Class args = ModalRoute.of(context).settings.arguments;
    return Container(
     color: Colors.black,
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
                    //color: Colors.black,
                      image: DecorationImage(
                        image: AssetImage(args.image),
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
                          Text(args.name, style: GoogleFonts.montserrat(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w100,
                                          ),
                            ),

                             Text(args.instructor, style: GoogleFonts.montserrat(
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