import 'package:flutter/material.dart';

class SignupoutputScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: EdgeInsets.only(top: 5, bottom: 30),
      color: Colors.white,
      child: Row(
        children: [
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/signup_screen');
            },
          ),
          IconButton(
            icon: Icon(Icons.location_on),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/map');
            },
          ),
          IconButton(
            icon: Icon(Icons.arrow_forward),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/output_screen');
            },
          ),
        ],
      ),
    );
  }
}
