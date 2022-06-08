import 'package:bacacomic/login/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'color.dart';

class profilepage extends StatelessWidget {
  const profilepage({Key? key}) : super(key: key);

  void clearPreferences() async {
    final pref = await SharedPreferences.getInstance();
    pref.clear();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: white,
          body: Container(
            child: Center(
              child: GestureDetector(
                onTap: () {
                  clearPreferences();
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                          builder: (BuildContext context) => LoginPage()),
                      (route) => false);
                },
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.exit_to_app,
                        color: black,
                        size: 50,
                      ),
                      Text(
                        "Log Out",
                        style: TextStyle(color: black),
                      ),
                    ]),
              ),
            ),
          )),
    );
  }
}
