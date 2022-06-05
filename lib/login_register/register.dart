import 'package:flutter/material.dart';
import 'package:hero_app/starting_animation_page.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        title: Text('Registration'),
        backgroundColor: Color.fromARGB(255, 252, 101, 101),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.only(left: 23, right: 23),
          margin: EdgeInsets.only(left: 25, right: 25, top: 40, bottom: 70),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12), color: Colors.white),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 5,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: " Name",
                      labelText: " Name",
                      focusColor: Colors.red),
                ),
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Contact number",
                      labelText: "Contact number",
                      focusColor: Colors.red),
                ),
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: " Email",
                      labelText: "Email",
                      focusColor: Colors.red),
                ),
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: " Password",
                      labelText: "Password",
                      focusColor: Colors.red),
                ),
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: " Re enter Password",
                      labelText: "Re enter Password",
                      focusColor: Colors.red),
                ),
                SizedBox(height: 18),
                RaisedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => StartAnimatePage()));
                  },
                  child: Text(
                    'Register',
                  ),
                  color: Colors.orangeAccent,
                ),
                SizedBox(height: 18),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
