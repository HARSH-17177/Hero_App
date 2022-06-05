import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:hero_app/screens/bikes.dart';
import 'package:hero_app/screens/home.dart';
import 'package:hero_app/screens/profile.dart';
import 'package:hero_app/screens/servicing.dart';
import 'package:hero_app/screens/showrooms.dart';

class StartScreen extends StatefulWidget {

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
    int _currentIndex = 0;
  List<Widget> pages =  [
    Home(),
   Servicing(),
   
  Bikes(),
   Showrooms(),
   Profile(),
  ];
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
      home: Scaffold(
        // appBar: AppBar(title: Center(child: Text('Home')),backgroundColor: Colors.red,),
        body: Center(child: pages[_currentIndex]),
        bottomNavigationBar: NavigationBarTheme(
          data:
              NavigationBarThemeData(indicatorColor: Colors.white, height: 70),
          child: NavigationBar(
            animationDuration: Duration(seconds: 1),
            backgroundColor: Colors.red,
            selectedIndex: _currentIndex,
            onDestinationSelected: (int newIndex) {
              setState(() {
                _currentIndex = newIndex;
              });
            },
            destinations: [
              NavigationDestination(
                  selectedIcon: Icon(Icons.home),
                  icon: Icon(Icons.home_outlined),
                  label: 'Home'),
              NavigationDestination(
                  selectedIcon: Icon(Icons.settings),
                  icon: Icon(Icons.settings_outlined),
                  label: 'Servicing'),
              NavigationDestination(
                  selectedIcon: Icon(FontAwesomeIcons.biking),
                  icon: Icon(FontAwesomeIcons.biking),
                  label: 'Bikes'),
              NavigationDestination(
                  selectedIcon: Icon(Icons.location_on),
                  icon: Icon(Icons.location_on_outlined),
                  label: 'Showrooms'),
              NavigationDestination(
                  selectedIcon: Icon(Icons.person),
                  icon: Icon(Icons.person_outlined),
                  label: 'profile'),
            ],
          ),
        ),
      ),
    );
  }
}