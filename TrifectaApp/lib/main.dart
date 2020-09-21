import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:google_fonts/google_fonts.dart';
import 'all.dart';
import 'trainer/trainerlogin.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: BaseRoute(),
  ));
}

class FirstRoute extends StatefulWidget {
  FirstRoute({Key key}) : super(key: key);

  @override
  _FirstRouteState createState() => _FirstRouteState();
}

class _FirstRouteState extends State<FirstRoute> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Container(
            decoration: BoxDecoration(color: Colors.black),
            //image:DecorationImage(
            //image: AssetImage("assets/images/signin.jpg"), fit: BoxFit.cover,
            //),
            //),
            child: Center(
              child: Column(
                children: [
                  // Image.asset("assets/images/signin.jpg"),
                  Spacer(),
                  Container(
                    width: 300,
                    height: 100,
                    child: Image(image: AssetImage("assets/images/Alogo.png")),
                  ),
                  Text(
                    "Welcome Back",
                    style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.cyan[500],
                          fontSize: 28
                          //fontSize:
                          ),
                    ),
                  ),

                  Text("Sign in to Continue",
                      style: TextStyle(
                        color: Colors.grey[500],
                      )),
                  //Text(
                  // 'Sign In',
                  //  style: TextStyle(fontSize: 20)
                  //  ),
                  Spacer(),
                  SigninForm(),

                  Row(children: [
                    Spacer(),
                    Text("Don't have an account? ",
                        style: TextStyle(
                          color: Colors.grey[500],
                        )),
                    FlatButton(
                      child: Text('Create a new one!',
                          style: TextStyle(color: Colors.blue[800])),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SecondRoute()),
                        );
                      },
                    ),
                    Spacer(),
                  ]),

                  SizedBox(height: 30),

                  FlatButton(
                    child: Text('I am a trainer',
                        style: TextStyle(color: Colors.cyan)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => trainerLoginRoute()),
                      );
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

//The actual signup form class
// Define a custom Form widget.

FocusNode myFocusNode = new FocusNode();

class SigninForm extends StatefulWidget {
  @override
  _SigninFormState createState() => _SigninFormState();
}

// Define a corresponding State class.
// This class holds the data related to the Form.
class _SigninFormState extends State<SigninForm> {
  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  final userController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    userController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Fill this out in the next step.
    return Container(
        width: 310,
        height: 220,
        child: Column(children: <Widget>[
          Spacer(),
          Spacer(),
          Container(
            width: 800,
            height: 44,
            child: TextFormField(
                style: TextStyle(color: Colors.white),
                controller: userController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(color: Colors.grey),
                  prefixIcon: new Icon(Icons.mail, color: Colors.blue),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(7.0)),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(7.0)),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                ),
                enabled: true),
          ),
          SizedBox(height: 15),
          Container(
            width: 800,
            height: 44,
            child: TextFormField(
              obscureText: true,
              style: TextStyle(color: Colors.white),
              controller: passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(color: Colors.grey),
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
          Row(children: [
            Spacer(),
            FlatButton(
              onPressed: () {},
              child: Text(
                'Forgot password?',
                style: TextStyle(color: Colors.blue[800]),
              ),
            ),
          ]),
          SizedBox(height: 15),
          RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                ),
              );
            },
            textColor: Colors.white,
            color: Colors.lightBlue[800],
            //padding: const EdgeInsets.all(0.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7.0),
              //color: Color(0xFF01579B)
            ),
            child: Container(
              decoration: const BoxDecoration(
                  //color: Colors.lightBlue[500],
                  ),

              //padding: const EdgeInsets.all(10.0),

              child: const Text('Login', style: TextStyle(fontSize: 20)),
            ),
          ),
        ]));
  }
}

class BaseRoute extends StatefulWidget {
  BaseRoute({Key key}) : super(key: key);

  @override
  _BaseRouteState createState() => _BaseRouteState();
}

class _BaseRouteState extends State<BaseRoute> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        top: false,
        child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/trifectaBase.png"),
                  fit: BoxFit.cover),
            ),
            child: Column(
              children: <Widget>[
                SizedBox(height: 50),
                Container(
                  height: 100,
                  width: 400,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/Dlogo.png"),
                        fit: BoxFit.cover),
                  ),
                ),
                Spacer(),
                _buildSignupButton(context),
                SizedBox(height: 15),
                _buildSigninButton(context),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FlatButton(
                      onPressed: () {},
                      child: Text(
                        'I am a trainer',
                        style: TextStyle(color: Colors.blueGrey),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            )),
      ),
    );
  }

  Widget _buildSignupButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SizedBox(
        height: 50,
        width: double.infinity,
        child: RaisedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondRoute()),
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
            child: const Text('Register', style: TextStyle(fontSize: 20)),
          ),
        ),
      ),
    );
  }

  Widget _buildSigninButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SizedBox(
        height: 50,
        width: double.infinity,
        child: RaisedButton(
          color: Color.fromRGBO(0, 0, 0, 0),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FirstRoute()),
            );
          },
          textColor: Colors.white,
          //padding: const EdgeInsets.all(0.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(27.0),
            side: BorderSide(
              width: 2,
              color: Color.fromRGBO(108, 206, 244, 1),
            ),
          ),
          child: Container(
            decoration: const BoxDecoration(
                //color: Colors.lightBlue[500],
                ),
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: const Text('Sign in', style: TextStyle(fontSize: 20)),
          ),
        ),
      ),
    );
  }
}
