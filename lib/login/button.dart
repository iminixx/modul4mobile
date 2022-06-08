import 'package:bacacomic/auth.dart';
import 'package:bacacomic/dummy_data.dart';
import 'package:bacacomic/homepage.dart';
import 'package:bacacomic/login/inputfield.dart';
import 'package:bacacomic/main.dart';
import 'package:bacacomic/profilepage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:bacacomic/pref_vars.dart';
import 'package:shared_preferences/shared_preferences.dart';

AuthenticationService service = AuthenticationService(FirebaseAuth.instance);

const List<Map<String, dynamic>> accounts = DummyData.data;

class Button extends StatelessWidget {
  void Setdata() async {
    final pref = await SharedPreferences.getInstance();
  }

  InputField input = InputField();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          style: ButtonStyle(
              backgroundColor:
                  MaterialStateColor.resolveWith((states) => Colors.purple)),
          onPressed: (() async {
            await service.signIn(email: email.text, password: pass.text);
            if (service.getUserData() != 'null') {
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => MyApp()),
                  (Route<dynamic> route) => false);
            }
            // Setdata();
            // for (int i = 0; i < accounts.length; i++) {
            //   if (accounts[i]['username'] == (username.text)) {
            //     if (accounts[i]['password'] == (password.text)) {
            //       loggedInUsername = accounts[i]['username'];
            //       isLoggedIn = true;
            //       saveToLocal();
            //       Navigator.of(context).pushAndRemoveUntil(
            //           MaterialPageRoute(builder: (context) => MyApp()),
            //           (Route<dynamic> route) => false);
            //       break;
            //     }
            //   }
            // }
          }),
          child: Center(
            child: Text(
              "Login",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        ElevatedButton(
          style: ButtonStyle(
              backgroundColor:
                  MaterialStateColor.resolveWith((states) => Colors.purple)),
          onPressed: (() async {
            await service.signUp(email: email.text, password: pass.text);
          }),
          child: Center(
            child: Text(
              "Sign Up",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}
