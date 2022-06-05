import 'package:flutter/material.dart';
import 'package:hero_app/constant.dart';

class Mybike extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            'Enter either "VIN No." or "Registration No."',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(
            height: 5,
          ),
          TextFormField(
            decoration:
                InputDecoration(hintText: 'VIN No.', labelText: 'Vin No.'),
          ),
          SizedBox(
            height: 5,
          ),
          TextFormField(
            decoration: InputDecoration(
                hintText: 'Registration No.', labelText: 'Registration No.'),
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('cancel'),
              ),
              SizedBox(
                width: 4,
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Search'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
