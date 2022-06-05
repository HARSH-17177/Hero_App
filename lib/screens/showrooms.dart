import 'package:flutter/material.dart';
import 'package:hero_app/popup/state_city.dart';

class Showrooms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Showrooms')),
        backgroundColor: Colors.red,
      ),
      body: MyHomePage(),
    );
  }
}
