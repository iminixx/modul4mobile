import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

final username = TextEditingController();
final password = TextEditingController();
TextEditingController email = TextEditingController();
TextEditingController pass = TextEditingController();

class InputField extends StatefulWidget {
  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  void setPreferences() async {
    final pref = await SharedPreferences.getInstance();
    pref.setString('username', username.text);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey))),
          child: TextField(
            controller: email,
            decoration: InputDecoration(
                hintText: "Enter your email",
                hintStyle: TextStyle(color: Colors.grey),
                border: InputBorder.none),
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey))),
          child: TextField(
            controller: pass,
            decoration: InputDecoration(
                hintText: "Enter your password",
                hintStyle: TextStyle(color: Colors.grey),
                border: InputBorder.none),
          ),
        ),
      ],
    );
  }
}
