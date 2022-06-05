import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ServiceCenter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('Showrooms'),
        backgroundColor: Colors.red,
      ),
      backgroundColor: Colors.blueGrey[100],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(color: Colors.white),
              child: Row(
                children: [
                  Flexible(
                    flex: 8,
                    child: Container(
                      child: Column(
                        children: [
                          Text(
                            'Auto Bikes - Hero MotoCorp',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                              '56C, Rattanlal Surajmal Compound Main Road Ranchi - 834001'),
                          Text(
                            'Ph no. : +919289922167',
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                      flex: 3,
                      child: Container(
                        height: 150,
                        decoration: BoxDecoration(
                          color: Colors.red,
                        ),
                        child: Icon(Icons.call),
                      )),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(color: Colors.white),
              child: Row(
                children: [
                  Flexible(
                    flex: 8,
                    child: Container(
                      child: Column(
                        children: [
                          Text(
                            'Automobikes - Hero MotoCorp',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                              'Ground Floor, Old HB Road, Khorhatoli Kokar Ranchi - 834001'),
                          Text(
                            'Ph no. : +919289922816',
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                      flex: 3,
                      child: Container(
                        height: 150,
                        decoration: BoxDecoration(
                          color: Colors.red,
                        ),
                        child: Icon(Icons.call),
                      )),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(color: Colors.white),
              child: Row(
                children: [
                  Flexible(
                    flex: 8,
                    child: Container(
                      child: Column(
                        children: [
                          Text(
                            'Anant Automobiles - Hero MotoCorp',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text('Kachnar toli, Singhmore Hatia Ranchi - 834003'),
                          Text(
                            'Ph no. : +919570094947',
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                      flex: 3,
                      child: Container(
                        height: 150,
                        decoration: BoxDecoration(
                          color: Colors.red,
                        ),
                        child: Icon(Icons.call),
                      )),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(color: Colors.white),
              child: Row(
                children: [
                  Flexible(
                    flex: 8,
                    child: Container(
                      child: Column(
                        children: [
                          Text(
                            'A-One Automobiles - Hero MotoCorp',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                              'Plot No 1129/1311, Khata No 365 Kanke Road Ranchi - 834008'),
                          Text(
                            'Ph no. : +916512231191',
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                      flex: 3,
                      child: Container(
                        height: 150,
                        decoration: BoxDecoration(
                          color: Colors.red,
                        ),
                        child: Icon(Icons.call),
                      )),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(color: Colors.white),
              child: Row(
                children: [
                  Flexible(
                    flex: 8,
                    child: Container(
                      child: Column(
                        children: [
                          Text(
                            'M/S. Bengal Speed Automobiles - Hero MotoCrop',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                              '	Ground Floor, Plot No 131, Kanti Kothi Morabadi Road Ranchi - 834008'),
                          Text(
                            'Ph no. :+919007023239',
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                      flex: 3,
                      child: Container(
                        height: 150,
                        decoration: BoxDecoration(
                          color: Colors.red,
                        ),
                        child: Icon(Icons.call),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
