import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../all.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondRoute extends StatefulWidget {
  SecondRoute({Key key}) : super(key: key);

  @override
  _SecondRouteState createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> {
  Color trifectaBlue = Color.fromRGBO(108, 206, 244, 1);

  @override
  void initState() {
    super.initState();
  }

  //Future<List> futureAlbum;
  Color gunmetal = Color(0xFF2A3439);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.black, gunmetal])),
              child: Center(
          
          child: Container(
            child: Column(
              children: [
                Container(height: 100, child:Image(image: AssetImage("assets/images/Alogo.png"),),),
                Text(
                  "Join Us!",
                  style: TextStyle(
                      //fontFamily: "Sofia",
                      fontWeight: FontWeight.bold,
                      color: trifectaBlue,
                      fontSize: 28
                      //fontSize:
                      ),
                ),
                SizedBox(height: 20),

                Text("Get Started in just 60s",
                    style: TextStyle(
                      color: Colors.grey[500],
                    )),
                //Text(
                // 'Sign In',
                //  style: TextStyle(fontSize: 20)
                //  ),
                SizedBox(height: 45),

                SignupForm(),
                //Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Go Back',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ],
            ),
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

class _SignupFormState extends State<SignupForm> {
  Color gunmetal = Color(0xFF2A3439);
  Color trifectaBlue = Color.fromRGBO(108, 206, 244, 1);
  final sController = TextEditingController();
  final pController = TextEditingController();
  final pcController = TextEditingController();
  final eController = TextEditingController();
  final lController = TextEditingController();
  @override
  void dispose() {
    sController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[     
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 140,
                height: 44,
                child: TextFormField(
                style: TextStyle(color: Colors.white),
                  controller: lController,
                  decoration: InputDecoration(
                    labelText: 'First',
                    prefixIcon: new Icon(Icons.person, color: trifectaBlue),
                    labelStyle: TextStyle(color: Colors.white),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(7.0)),
                      borderSide: BorderSide(color: trifectaBlue),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(7.0)),
                      borderSide: BorderSide(color: trifectaBlue),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 20),
              Container(
                width: 140,
                height: 44,
                child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  controller: lController,
                  decoration: InputDecoration(
                    labelText: 'Last Name',
                    labelStyle: TextStyle(color: Colors.white),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(7.0)),
                      borderSide: BorderSide(color: trifectaBlue),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(7.0)),
                      borderSide: BorderSide(color: trifectaBlue),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          Container(
            width: 300,
            height: 44,
            child: TextFormField(
              style: TextStyle(color: Colors.white),
                controller: sController,
                decoration: InputDecoration(
                  labelText: 'Phone Number',
                  labelStyle: TextStyle(color: Colors.white),
                  prefixIcon: new Icon(Icons.phone, color: trifectaBlue),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(7.0)),
                    borderSide: BorderSide(color: trifectaBlue),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(7.0)),
                    borderSide: BorderSide(color: trifectaBlue),
                  ),
                ),
                enabled: true),
          ),
          SizedBox(height: 15),
          Container(
            width: 300,
            height: 44,
            child: TextFormField(
                controller: eController,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  labelText: 'Email',
                  prefixIcon: new Icon(Icons.mail, color: trifectaBlue),
                  labelStyle: TextStyle(color: Colors.white),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(7.0)),
                    borderSide: BorderSide(color: trifectaBlue),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(7.0)),
                    borderSide: BorderSide(color: trifectaBlue),
                  ),
                ),
                enabled: true),
          ),
          SizedBox(height: 15),
          Container(
            width: 300,
            height: 44,
            child: TextFormField(
              obscureText: true,
              controller: pController,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(color: Colors.white),
                prefixIcon: new Icon(Icons.lock, color: trifectaBlue),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(7.0)),
                  borderSide: BorderSide(color: trifectaBlue),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(7.0)),
                  borderSide: BorderSide(color: trifectaBlue),
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
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  labelText: 'Confirm Password',
                  labelStyle: TextStyle(color: Colors.white),
                  prefixIcon: new Icon(Icons.lock_outline, color: trifectaBlue),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(7.0)),
                    borderSide: BorderSide(color: trifectaBlue),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(7.0)),
                    borderSide: BorderSide(color: trifectaBlue),
                  ),
                ),
                enabled: true),
          ),
          SizedBox(height: 45),
          _buildSignupButton(context),
        ],
      ),
    );
  }

  Widget _buildSignupButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SizedBox(
        height: 50,
        width: 300,
        child: RaisedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomeRoute()),
            );
          },
          textColor: Colors.white,
          color: Color.fromRGBO(108, 206, 244, 1),
          //padding: const EdgeInsets.all(0.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(27.0),
            //color: Color(0xFF01579B)
          ),
          child: Container(
            decoration: const BoxDecoration(
                //color: Colors.lightBlue[500],
                ),
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: const Text('Sign Up', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
          ),
        ),
      ),
    );
  }
}
