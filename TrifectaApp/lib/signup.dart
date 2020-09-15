
import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'main.dart';
import 'package:google_fonts/google_fonts.dart';



class SecondRoute extends StatefulWidget {
  SecondRoute({Key key}) : super(key: key);

  @override
  _SecondRouteState createState() => _SecondRouteState();

}

class _SecondRouteState extends State<SecondRoute>{

  @override
  void initState() {
    super.initState();
  }

  //Future<List> futureAlbum;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(

      child: Container(
          decoration: BoxDecoration(
            color:Colors.black
          ),
           width: 800,

           // image:DecorationImage(
           //   image: AssetImage("assets/images/signup.jpg"), fit: BoxFit.cover,
           // ),
          //),



        child: Container(
           width: 300,
           child: Column(

          children:[

            SizedBox(height:65),
            Text("Join The Movement",
              style: GoogleFonts.rubik(
                textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.lightBlue[800],
                    fontSize: 28
                  //fontSize:
                ),
              ),
            ),

            Text("Fill out the form below",
                style: TextStyle(
                  color: Colors.grey[500],
                )),
            //Text(
            // 'Sign In',
            //  style: TextStyle(fontSize: 20)
            //  ),
            SizedBox(height:45),


            SignupForm(),
            //Spacer(),
            Row(
              children: <Widget>[
              FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                },

                child: Text(
                    '         Already have an account?            Sign In', style: TextStyle(color: Colors.grey)
                )
              ),
            ]
            ),





      ]
        )
        ),
      ),
      ),
    );
  }
}


//Signup form

class SignupForm extends StatefulWidget {
  @override
  _SignupFormState createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm>{
  final sController = TextEditingController();
  final pController = TextEditingController();
  final pcController = TextEditingController();
  final eController = TextEditingController();
  final lController = TextEditingController();
  @override
  void dispose(){
    sController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[

          Container(
            width: 300,
            height: 44,

            child: TextFormField(

                controller: lController,
                decoration: InputDecoration(
                  labelText: 'Full Name',
                  prefixIcon: new Icon(Icons.person, color: Colors.blue),
                  labelStyle: TextStyle(
                      color: Colors.grey
                  ),

                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(7.0)),
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(7.0)),
                      borderSide: BorderSide(color: Colors.blue),
                    ),



                ),

            ),
          ),
          SizedBox(height:15),






          Container(
            width: 300,
            height: 44,

            child: TextFormField(

                controller: sController,
                decoration: InputDecoration(
                  labelText: 'Phone Number',
                  labelStyle: TextStyle(
                      color: Colors.grey
                  ),
                  prefixIcon: new Icon(Icons.phone, color: Colors.blue),

                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(7.0)),
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(7.0)),
                      borderSide: BorderSide(color: Colors.blue),
                    ),



                ),
                enabled: true
            ),
          ),

          SizedBox(height: 15),


          Container(
            width: 300,
            height: 44,

            child: TextFormField(

                controller: eController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  prefixIcon: new Icon(Icons.mail, color: Colors.blue),
                  labelStyle: TextStyle(
                      color: Colors.grey
                  ),

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(7.0)),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(7.0)),
                    borderSide: BorderSide(color: Colors.blue),
                  ),



                ),
                enabled: true
            ),
          ),

          SizedBox(height: 15),

          Container(
            width: 300,
            height: 44,

            child: TextFormField(
              obscureText: true,
              controller: pController,
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(
                    color: Colors.grey
                ),
                prefixIcon: new Icon(Icons.lock, color: Colors.blue),

                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(7.0)),
                  borderSide: BorderSide(color: Colors.blue),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(7.0)),
                  borderSide: BorderSide(color: Colors.blue),
                ),


              ),
            ),


          ),
          SizedBox(height: 15),

          Container(
            width: 300,
            height: 44,

            child: TextFormField(
                obscureText: true,
                controller: pcController,

                decoration: InputDecoration(
                  labelText: 'Confirm Password',
                  labelStyle: TextStyle(
                      color: Colors.grey
                  ),
                  prefixIcon: new Icon(Icons.lock_outline, color: Colors.blue),

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(7.0)),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(7.0)),
                    borderSide: BorderSide(color: Colors.blue),
                  ),



                ),
                enabled: true
            ),
          ),
          SizedBox(height:45),
          RaisedButton(

            onPressed: () {},
            textColor: Colors.white,
            color: Color(0xFF0277BD),
            //padding: const EdgeInsets.all(0.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7.0),
              //color:


            ),
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xFF0277BD),
              ),

              //padding: const EdgeInsets.all(10.0),

              child:
              const Text('                Sign up                   ',
                  style: TextStyle(fontSize: 20)),
            ),


          ),







    ]
      ),
    );


  }


  //http functions



}





