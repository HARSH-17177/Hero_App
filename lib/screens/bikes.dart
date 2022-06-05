import 'package:awesome_icons/awesome_icons.dart';
import 'package:babylonjs_viewer/babylonjs_viewer.dart';
import 'package:flutter/material.dart';
import 'package:hero_app/constant.dart';

class Bikes extends StatefulWidget {
  @override
  State<Bikes> createState() => _BikesState();
}

class _BikesState extends State<Bikes> {
  String dropdownvalue = 'black';
  List<String> colors = [
    'Blue',
    'orange',
    'black',
    'white',
    'yellow',
    'custom'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Bikes')),
          backgroundColor: Colors.red,
        ),
        body: Column(children: [
          Expanded(
            flex: 2,
            child: Container(
              child: BabylonJSViewer(src: 'assets/motorcycle.glb'),
            ),
          ),
          Expanded(
            flex: 3,
            child: SingleChildScrollView(
              child: Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blueGrey[100],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        margin: EdgeInsets.all(5),
                        padding: EdgeInsets.only(
                          left: 10,
                          bottom: 9,
                          top: 9,
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            Icon(FontAwesomeIcons.angleLeft),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Hero Virat',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: Colors.blueGrey[100],
                                  borderRadius: BorderRadius.circular(8)),
                              child: Row(
                                children: [
                                  Text(
                                    'Color :  ',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  DropdownButton(
                                    value: dropdownvalue,
                                    items: colors.map((String items) {
                                      return DropdownMenuItem(
                                        value: items,
                                        child: Text(
                                          items,
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      );
                                    }).toList(),
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        dropdownvalue = newValue!;
                                      });
                                    },
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Icon(FontAwesomeIcons.angleRight)
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 2, left: 5, right: 5),
                        padding: EdgeInsets.only(left: 20, top: 9, bottom: 9),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            Icon(
                              Icons.settings,
                              size: 30,
                              color: Colors.red,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Engine',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 8, left: 5, right: 5),
                        padding: EdgeInsets.all(11),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                            child: Text(
                          'Type:  Air cooled 4 stroke \nDisplacement:  113 cc \nMax. Power:  6.73 kW @ 7500 revolutions per minute \nMax. Torque:  9.79 Nm @ 5000 revolutions per minute \nBore x Stroke:  50.0 x 57.8 \nCompression Ratio:  9.7:1 \nStarting:  Self (with i3s) & Kick',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 13),
                        )),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 2, left: 5, right: 5),
                        padding: EdgeInsets.only(left: 20, top: 9, bottom: 9),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.screwdriver,
                              size: 30,
                              color: Colors.red,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Transmission & Chassis',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 8, left: 5, right: 5),
                        padding: EdgeInsets.only(left: 45, top: 11, bottom: 11),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          'Clutch:  Wet Multi Plate\nGear box:  Constant Mesh\nFrame:  Diamond',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 13),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 2, left: 5, right: 5),
                        padding: EdgeInsets.only(
                            left: 0, top: 9, bottom: 9, right: 180),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            Expanded(
                                child: Image.asset(
                              'images/suspension.png',
                              height: 30,
                              color: Colors.red,
                            )),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Suspension',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 8, left: 5, right: 5),
                        padding: EdgeInsets.only(left: 45, top: 11, bottom: 11),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          'Front:  Conventional fork - Dia 30mm\nRear:  Twin shox',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 13),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 2, left: 5, right: 5),
                        padding: EdgeInsets.only(
                            left: 0, top: 9, bottom: 9, right: 210),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            Expanded(
                                child: Image.asset(
                              'images/brakes.png',
                              height: 30,
                              color: Colors.red,
                            )),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Brakes',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 8, left: 5, right: 5),
                        padding: EdgeInsets.only(left: 45, top: 11, bottom: 11),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          'Front Brake Disc:  240mm\nFront Brake Drum:  130mm\nRear Brake Drum:  130mm',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 13),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 2, left: 5, right: 5),
                        padding: EdgeInsets.only(
                            left: 0, top: 9, bottom: 9, right: 150),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            Expanded(
                                child: Image.asset(
                              'images/tyres.png',
                              height: 30,
                              color: Colors.red,
                            )),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'wheels & Tyres',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 8, left: 5, right: 5),
                        padding: EdgeInsets.only(left: 45, top: 11, bottom: 11),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          'Tyre Size Front:  80/100-18\nTyre Size Rear:  80/100-18',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 13),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 2, left: 5, right: 5),
                        padding: EdgeInsets.only(
                            left: 0, top: 9, bottom: 9, right: 180),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            Expanded(
                                child: Image.asset(
                              'images/electrical.png',
                              height: 30,
                              color: Colors.red,
                            )),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Electricals',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 8, left: 5, right: 5),
                        padding: EdgeInsets.only(left: 45, top: 11, bottom: 11),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          'Battery:  3Ah MF',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 13),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 2, left: 5, right: 5),
                        padding: EdgeInsets.only(
                            left: 0, top: 9, bottom: 9, right: 160),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            Expanded(
                                child: Image.asset(
                              'images/bike.png',
                              height: 30,
                              color: Colors.red,
                            )),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Dimensions',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 8, left: 5, right: 5),
                        padding: EdgeInsets.only(left: 45, top: 11, bottom: 11),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          'Length:  2036mm\nWidth:  715mm (Drum), 739mm (Disc)\nHeight:  1113mm\nSaddle Height:  799\nWheelbase:  1270\nGround Clearance:  180\nFuel Tank Capacity:  10 Litre\nKerb Weight:  117kg (Drum), 118kg (Disc)',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 13),
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(
                              top: 3, bottom: 7, left: 5, right: 5),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                              child: Text(
                            'Book Now',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ))),
                    ],
                  ),
                ),
              ),
            ),
          )
        ]));
  }
}
