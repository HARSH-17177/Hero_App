import 'package:flutter/material.dart';

class Security extends StatefulWidget {
  @override
  State<Security> createState() => _SecurityState();
}

class _SecurityState extends State<Security> {
  bool ischecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Security'),
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
                  Text('Security Feature')
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.all(40),
                child: Image.asset('images/alert.png')),
            Expanded(
                child: Text(
              '* Someone is misplacing your Vehicle please go and check',
              textAlign: TextAlign.center,
            )),
          ],
        ),
      ),
    );
  }
}
