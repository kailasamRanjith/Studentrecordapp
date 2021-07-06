import 'package:flutter/material.dart';
import 'package:kailasam/Database/database.dart';
import 'package:kailasam/screens/signupoutput_screen.dart';

class OutputScreen extends StatefulWidget {
  @override
  _OutputScreenState createState() => _OutputScreenState();
}

class _OutputScreenState extends State<OutputScreen> {
  Map<String, String> newUser = {};
  Future _userFuture;

  @override
  void initState() {
    super.initState();
    _userFuture = getUser();
  }

  getUser() async {
    final _userData = await DBProvider.bd.getUser();
    return _userData;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Output'),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: _userFuture,
        builder: (_, userData) {
          switch (userData.connectionState) {
            case ConnectionState.none:
              return Container();
            case ConnectionState.waiting:
              return Container();
            case ConnectionState.active:
            case ConnectionState.done:
              if (!newUser.containsKey('username')) {
                newUser = Map<String, String>.from(userData.data);
              }
              return Column(children: [
                Text(
                  newUser['username'],
                ),
                Text(
                  newUser['password'],
                ),
              ]);
          }
          return Container();
        },
      ),
      bottomNavigationBar: SignupoutputScreen(),
    );
  }
}
