import 'package:flutter/material.dart';

class Loginscreen extends StatefulWidget {
  @override
  _LoginscreenState createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  var username;
  var password;

  onLoginpressed() {
    try {
      if (username == 'ka' && password == 'ka') {
        Navigator.pushNamed(context, '/loginoutput');
      }
    } catch (e) {}
  }

  onSigninpressed() {
    try {
      Navigator.pushNamed(context, '/signup_screen');
    } catch (e) {}
  }

  onMappressed() {
    try {
      Navigator.pushNamed(context, '/map');
    } catch (e) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('kailasam/image/4481070.png'),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 100),
                      child: Column(
                        children: [
                          Text('User_Name'),
                          TextField(
                            onChanged: (value) {
                              setState(() {
                                username = value;
                              });
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text('Password'),
                          TextField(
                            onChanged: (value) {
                              setState(() {
                                password = value;
                              });
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(vertical: 20.0),
                                height: 30.0,
                                decoration: BoxDecoration(
                                    color: Theme.of(context).primaryColor,
                                    borderRadius: BorderRadius.circular(10.0)),
                                child: ElevatedButton(
                                  onPressed: () => onLoginpressed(),
                                  child: Text(
                                    'Login',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 20.0),
                              Container(
                                margin: EdgeInsets.symmetric(vertical: 20.0),
                                height: 30.0,
                                decoration: BoxDecoration(
                                    color: Theme.of(context).primaryColor,
                                    borderRadius: BorderRadius.circular(10.0)),
                                child: ElevatedButton(
                                  onPressed: () => onSigninpressed(),
                                  child: Text(
                                    'Signup',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 20.0),
                              Container(
                                margin: EdgeInsets.symmetric(vertical: 20.0),
                                height: 30.0,
                                decoration: BoxDecoration(
                                    color: Theme.of(context).primaryColor,
                                    borderRadius: BorderRadius.circular(10.0)),
                                child: ElevatedButton(
                                  onPressed: () => onMappressed(),
                                  child: Text(
                                    'Map',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
