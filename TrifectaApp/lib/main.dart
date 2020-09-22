import 'dart:async';
import 'dart:convert';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';
import 'all.dart';
import 'trainer/trainerlogin.dart';

void main() {
  runApp(BaseRoute());
}

class FirstRoute extends StatefulWidget {
  FirstRoute({Key key}) : super(key: key);

  @override
  _FirstRouteState createState() => _FirstRouteState();
}

class _FirstRouteState extends State<FirstRoute> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Container(
            decoration: BoxDecoration(color: Colors.transparent),
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
  VideoPlayerController _controller;
  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset("assets/videos/paul.mp4")
      ..initialize().then((_) {
        // Once the video has been loaded we play the video and set looping to true.
        _controller.setVolume(0);
        _controller.play();
        _controller.setLooping(true);
        // Ensure the first frame is shown after the video is initialized.
        setState(() {});
      });
  }

  double _sigmaX = 0; // from 0-10
  double _sigmaY = 0; // from 0-10
  double _opacity = 0;

  Color trifectaBlue = Color.fromRGBO(108, 206, 244, 1);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Stack(
        children: [
          SizedBox.expand(
            child: FittedBox(
              fit: BoxFit.fill,
              child: SizedBox(
                width: _controller.value.size?.width ?? 0,
                height: _controller.value.size?.height ?? 0,
                child: VideoPlayer(_controller),
              ),
            ),
          ),
          Container(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: _sigmaX, sigmaY: _sigmaY),
              child: Container(
                color: Colors.black.withOpacity(_opacity),
              ),
            ),
          ),
          Container(
              child: Column(
            children: <Widget>[
              SizedBox(height: 75),
              Container(
                height: 100,
                width: 400,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/Dlogo.png"),
                    fit: BoxFit.cover,
                  ),
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
        ],
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
