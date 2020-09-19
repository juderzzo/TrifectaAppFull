import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'homepage.dart';
import '../main.dart';
import 'spm.dart';

class ProfileRoute extends StatefulWidget {
  ProfileRoute({Key key}) : super(key: key);
  @override
  _ProfileRouteState createState() => _ProfileRouteState();
}


class _ProfileRouteState extends State<ProfileRoute>{
  bool _emails = true;
  bool _push = false;
  @override
  void initState() {
    super.initState();
  }

  static final String path = "lib/src/pages/settings/settings2.dart";
  final TextStyle whiteText = TextStyle(
    color: Colors.white,
  );
  final TextStyle greyTExt = TextStyle(
    color: Colors.grey.shade400,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Theme(
        data: Theme.of(context).copyWith(
          brightness: Brightness.dark,
          primaryColor: Colors.purple,
        ),
        child: DefaultTextStyle(
          style: TextStyle(
            color: Colors.white,
          ),
          child: 
          Column(
            children: [
            SingleChildScrollView(

            child: Column(
              children: <Widget>[

                const SizedBox(height: 30.0),
                Header(),
                Row(
                  children: <Widget>[
                    SizedBox(width: 10),
                    Container(
                      //padding: const EdgeInsets.all(32.0),
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white,
                          width: 2.0,
                        ),
                      ),
                      child: Icon(Icons.account_circle, size: 50),
                    ),
                    const SizedBox(width: 10.0),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Full Name",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                            ),
                          ),
                          Text(
                            "Location",
                            style: TextStyle(
                              color: Colors.grey.shade400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20.0),
                ListTile(
                  title: Text(
                    "Achievements",
                    style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                        //fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 25
                        //fontSize:
                      ),
                    ),
                  ),
                  subtitle: Text(
                    "English US",
                    style: greyTExt,
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.grey.shade400,
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: Text(
                    "Profile Settings",
                    style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                        //fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 25
                        //fontSize:
                      ),
                    ),
                  ),
                  subtitle: Text(
                    "Full Name",
                    style: greyTExt,
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.grey.shade400,
                  ),
                  onTap: () {},
                ),
                SwitchListTile(
                  title: Text(
                    "Email Notifications",
                    style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                        //fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 25
                        //fontSize:
                      ),
                    ),
                  ),

                    value: _emails,
                  onChanged: (val) {
                    setState(() {
                      _emails = val;
                    });
                  },
                ),
                SwitchListTile(
                  title: Text(
                    "Push Notifications",
                    style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                        //fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 25
                        //fontSize:
                      ),
                    ),
                  ),

                  value: _push,
                  onChanged: (val) {
                    setState(() {
                      _push = val;
                    });
                  },
                ),
                ListTile(
                  title: Text(
                    "Logout",
                    style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                        //fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 25
                        //fontSize:
                      ),
                    ),
                  ),
                  //add a warning message
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FirstRoute())
                    );
                  },
                ),
              ],
            ),
          ),
          BottomBar(),
          ]
          ),
        ),
      ),
    );
  }
}