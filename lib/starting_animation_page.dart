import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hero_app/constant.dart';
import 'package:hero_app/login_register/login.dart';

class StartAnimatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: CarouselSlider(
              options: CarouselOptions(
                  enlargeCenterPage: true,
                  enableInfiniteScroll: false,
                  autoPlay: true,
                  height: 500),
              items: [
                Image.asset(
                  'images/hero1.png',
                ),
                Image.asset(
                  'images/hero2.png',
                ),
                Image.asset(
                  'images/hero3.png',
                ),
                Image.asset(
                  'images/hero4.png',
                ),
                Image.asset(
                  'images/hero5.png',
                ),
                Image.asset(
                  'images/hero6.png',
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Login()));
            },
            child: Container(
              margin: EdgeInsets.only(left: 80, right: 80, bottom: 80),
              padding: EdgeInsets.all(14),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5), color: Colors.red),
              child: Center(
                  child: Text(
                'Lets Go ->',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              )),
            ),
          )
        ],
      ),
    );
  }
}
