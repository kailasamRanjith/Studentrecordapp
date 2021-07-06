import 'package:flutter/material.dart';
import 'package:kailasam/map/map.dart';
import 'package:kailasam/screens/loginoutput.dart';
import 'package:kailasam/screens/output_screen.dart';
import 'package:kailasam/screens/signup_screen.dart';
import 'package:kailasam/screens/signupoutput_screen.dart';
import './screens/login_screen.dart';

void main() => runApp(new MaterialApp(
      home: new MyApp(),
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'App',
        initialRoute: '/login_screen',
        routes: {
          '/login_screen': (context) => Loginscreen(),
          '/signup_screen': (context) => Signupscreen(),
          '/loginoutput': (context) => LoginOutput(),
          '/output_screen': (context) => OutputScreen(),
          '/signupoutput_screen': (context) => SignupoutputScreen(),
          '/map': (context) => MapScreen(),
        });
  }
}
