import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:hero_app/constant.dart';
import 'package:hero_app/login_register/login.dart';
import 'package:hero_app/profiles/medical.dart';
import 'package:hero_app/profiles/security.dart';
import 'package:url_launcher/url_launcher.dart';

class Profile extends StatelessWidget {
  static void navigateTo(double lat, double lng) async {
    var uri = Uri.parse("google.navigation:q=$lat,$lng&mode=d");
    if (await canLaunch(uri.toString())) {
      await launch(uri.toString());
    } else {
      throw 'Could not launch ${uri.toString()}';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        title: Center(child: Text('Profile')),
        backgroundColor: Colors.red,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Flexible(
            flex: 2,
            child: Container(
              padding: EdgeInsets.only(right: 20, bottom: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
              ),
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Row(
                children: [
                  Expanded(child: Image.asset('images/heroicon.png')),
                  Expanded(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Harsh Gupta',
                        style: textStyle,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Harsh3101Gupta@gmail.com')
                    ],
                  ))
                ],
              ),
            ),
          ),
          Flexible(
            flex: 5,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  InkWell(
                    onTap: () {
                      navigateTo(12.90767986071998, 77.56393879810244);
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12)),
                      child: Row(children: [
                        Icon(
                          FontAwesomeIcons.searchLocation,
                          size: 50,
                        ),
                        SizedBox(
                          width: 35,
                        ),
                        Text(
                          'Locate Your Vehicle',
                          style: cardtext,
                        )
                      ]),
                    ),
                  ),
                  InkWell(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12)),
                      child: Row(children: [
                        Icon(
                          FontAwesomeIcons.map,
                          size: 50,
                        ),
                        SizedBox(
                          width: 35,
                        ),
                        Text(
                          'Start a Trip',
                          style: cardtext,
                        )
                      ]),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Medical()));
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12)),
                      child: Row(children: [
                        Icon(
                          FontAwesomeIcons.clinicMedical,
                          size: 50,
                        ),
                        SizedBox(
                          width: 35,
                        ),
                        Text(
                          'Medical Alert',
                          style: cardtext,
                        )
                      ]),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Security()));
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12)),
                      child: Row(children: [
                        Icon(
                          Icons.security,
                          size: 50,
                        ),
                        SizedBox(
                          width: 35,
                        ),
                        Text(
                          'Anti theft',
                          style: cardtext,
                        )
                      ]),
                    ),
                  ),
                  InkWell(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12)),
                      child: Row(children: [
                        Icon(
                          Icons.check_box,
                          size: 50,
                        ),
                        SizedBox(
                          width: 35,
                        ),
                        Text(
                          'MY Booking',
                          style: cardtext,
                        )
                      ]),
                    ),
                  ),
                  InkWell(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12)),
                      child: Row(children: [
                        Icon(
                          Icons.book,
                          size: 50,
                        ),
                        SizedBox(
                          width: 35,
                        ),
                        Text(
                          'Terms and Conditions',
                          style: cardtext,
                        )
                      ]),
                    ),
                  ),
                  InkWell(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12)),
                      child: Row(children: [
                        Icon(
                          Icons.tips_and_updates,
                          size: 50,
                        ),
                        SizedBox(
                          width: 35,
                        ),
                        Text(
                          'Tips',
                          style: cardtext,
                        )
                      ]),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Login()));
                    },
                    child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                        margin:
                            EdgeInsets.symmetric(horizontal: 100, vertical: 5),
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(12)),
                        child: Center(
                            child: Text(
                          "Logout",
                          style: cardtext,
                        ))),
                  ),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
