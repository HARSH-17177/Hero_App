import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:hero_app/popup/bottompop.dart';

class Home extends StatelessWidget {
  @override
  final images = [
    'images/hero_xtreme.png',
    'images/hero_glamour.png',
    'images/hero_xpulse.png',
    'images/hero_destini.png',
    'images/hero_maestro.png',
    'images/hero_pleasure.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        title: Center(child: Text('Home')),
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 4,
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                padding: EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: CarouselSlider(
                  options: CarouselOptions(
                    enlargeCenterPage: true,
                    enableInfiniteScroll: false,
                    autoPlay: true,
                  ),
                  items: [
                    Image.asset(
                      'images/hero_xtreme.png',
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'images/hero_glamour.png',
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'images/hero_xpulse.png',
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'images/hero_destini.png',
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'images/hero_maestro.png',
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'images/hero_pleasure.png',
                      fit: BoxFit.cover,
                    ),
                  ],
                )),
            SizedBox(
              height: 5,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5),
              padding: EdgeInsets.all(7),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  Column(
                    children: [
                      Text(
                        'My Bikes',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      FloatingActionButton(
                          onPressed: () {
                            showModalBottomSheet(
                                context: context,
                                isScrollControlled: true,
                                builder: (context) => SingleChildScrollView(
                                        child: Container(
                                      padding: EdgeInsets.only(
                                          bottom: MediaQuery.of(context)
                                              .viewInsets
                                              .bottom),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                        ),
                                        child: Mybike(),
                                      ),
                                    )));
                          },
                          child: Icon(Icons.add)),
                      SizedBox(
                        height: 4,
                      ),
                      Text('Add Bike'),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Services And maintenance Schedule  ',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                      'Our constant endeavor is to support the company\'s mandate of providing highest level of customer satisfaction by taking good care of your two-wheeler service and maintenance through our vast network of committed dealers and service outlets spread across the country.'),
                  SizedBox(
                    height: 18,
                  ),
                  Text(
                    'Services Schedule',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Text(
                      'Hero MotoCorp offers free services on all its two-wheelers. You should avail these services within the stipulated conditions of time period or km range, whichever condition gets satisfied earlier from the date of purchase. After the completion of free services or its validity period you must continue availing paid services as per the recommended service schedule.'),
                  SizedBox(
                    height: 18,
                  ),
                  CarouselSlider(
                    options: CarouselOptions(
                      height: 450,
                      enlargeCenterPage: true,
                      enableInfiniteScroll: false,
                      autoPlay: true,
                    ),
                    items: [
                      Image.asset(
                        'images/destini.png',
                        fit: BoxFit.fill,
                      ),
                      Image.asset(
                        'images/passion.png',
                        fit: BoxFit.fill,
                      ),
                      Image.asset(
                        'images/splender.png',
                        fit: BoxFit.fill,
                      ),
                      Image.asset(
                        'images/xpulse.png',
                        fit: BoxFit.fill,
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
