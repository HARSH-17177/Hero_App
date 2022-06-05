import 'package:flutter/material.dart';

class Medical extends StatefulWidget {
  @override
  State<Medical> createState() => _MedicalState();
}

class _MedicalState extends State<Medical> {
  bool ischecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Medical Alert'),
        backgroundColor: Colors.red,
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                children: [
                  Checkbox(
                      value: ischecked,
                      onChanged: (context) {
                        setState(() {
                          ischecked = !ischecked;
                        });
                      }),
                  Text('Medical Alert')
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.all(40),
                child: Image.asset('images/medical.png')),
            SizedBox(
              height: 20,
            ),
            Expanded(
                child: Text(
              '* if you are fine  please turn off Medical alert under 3 min of accident. Other wise medical Emergency messages would be automatically sent to your contacts along with location. ',
              textAlign: TextAlign.center,
            )),
            Expanded(
                child: Text(
              '* Please Aalways wear Helmet for your safety',
              textAlign: TextAlign.center,
            )),
          ],
        ),
      ),
    );
  }
}
