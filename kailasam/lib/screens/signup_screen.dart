import 'package:flutter/material.dart';
import 'package:kailasam/Database/database.dart';
import 'package:kailasam/models/user.dart';
import 'package:kailasam/screens/signupoutput_screen.dart';

class Signupscreen extends StatefulWidget {
  @override
  _SignupscreenState createState() => _SignupscreenState();
}

class _SignupscreenState extends State<Signupscreen> {
  var username;
  var password;

  onoutputpressed() {
    try {
      Navigator.pushNamed(context, '/output_screen');
    } catch (e) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Form(
              child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                TextFormField(
                  style: TextStyle(fontSize: 20.0),
                  decoration: InputDecoration(
                    labelText: 'username',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  style: TextStyle(fontSize: 20.0),
                  decoration: InputDecoration(
                    labelText: 'password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20.0),
                  height: 30.0,
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: ElevatedButton(
                    onPressed: () {
                      var newDBUser =
                          User(username: username, password: password);
                      DBProvider.bd.newUser(newDBUser);
                      print('hi');
                    },
                    child: Text(
                      'save',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
        ],
      ),
      bottomNavigationBar: SignupoutputScreen(),
    );
  }
}
