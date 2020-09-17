import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'homepage.dart';
import '../main.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ChallengesRoute extends StatefulWidget {
  ChallengesRoute({Key key}) : super(key: key);
  @override
  _ChallengesRouteState createState() => _ChallengesRouteState();
}


class _ChallengesRouteState extends State<ChallengesRoute>{
  @override
  void initState() {
    super.initState();
  }


  final TextStyle whiteText = TextStyle(color: Colors.white);

  @override
    Widget build(BuildContext context) {
      return SafeArea(
        child: Scaffold(
        backgroundColor: Colors.black,

        body:
            Column(
              children: <Widget>[
                Header(),
                _buildBody(context)
              ],
            )
        ),
      );

    }



  Widget _buildBody(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          _buildHeader(),
          const SizedBox(height: 50.0),
          Row(
            children: <Widget>[
              Expanded(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 190,
                      color: Colors.blue,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          ListTile(
                            title: Text(
                              "Mind ",
                              style:
                              Theme.of(context).textTheme.display1.copyWith(
                                color: Colors.white,
                                fontSize: 24.0,
                              ),
                            ),
                            trailing: Icon(
                              FontAwesomeIcons.brain,
                              color: Colors.white,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: Text(
                              '62 %',
                              style: whiteText,
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Container(
                      height: 120,
                      color: Colors.green,
                      child: FlatButton(
                        child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          ListTile(
                            title: Text(
                              "39%",
                              style:
                              Theme.of(context).textTheme.display1.copyWith(
                                color: Colors.white,
                                fontSize: 24.0,
                              ),
                            ),
                            trailing: Icon(
                              FontAwesomeIcons.star,
                              color: Colors.white,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: Text(
                              '39% of Badges',
                              style: whiteText,
                            ),
                          )
                        ],
                      ),
                    ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 10.0),
              Expanded(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 120,
                      color: Colors.red,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          ListTile(
                            title: Text(
                              "22%",
                              style:
                              Theme.of(context).textTheme.display1.copyWith(
                                color: Colors.white,
                                fontSize: 24.0,
                              ),
                            ),
                            trailing: Icon(
                              FontAwesomeIcons.running,
                              color: Colors.white,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: Text(
                              'Sport',
                              style: whiteText,
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Container(
                      height: 190,
                      color: Colors.yellow,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          ListTile(
                            title: Text(
                              "Body",
                              style:
                              Theme.of(context).textTheme.display1.copyWith(
                                fontSize: 24.0,
                                color: Colors.black,
                              ),
                            ),
                            trailing: Icon(
                              FontAwesomeIcons.male,
                              color: Colors.black,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: Text(
                              '52%',
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      children: <Widget>[
        Container(
          height: 100,
          width: 100,
          padding: const EdgeInsets.all(8.0),
          child: CircularProgressIndicator(
            value: 0.5,
            valueColor: AlwaysStoppedAnimation(Colors.blue),
            backgroundColor: Colors.grey.shade700,
          ),
        ),
        const SizedBox(width: 20.0),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Overall\nProgress",
                style: whiteText.copyWith(fontSize: 20.0),
              ),
              const SizedBox(height: 20.0),
              Text(
                "45% done with the Trifecta",
                style: TextStyle(color: Colors.grey, fontSize: 16.0),
              ),
            ],
          ),
        )
      ],
    );
  }
  }




