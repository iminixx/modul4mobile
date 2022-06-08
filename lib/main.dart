import 'package:bacacomic/favorpage.dart';
import 'package:bacacomic/homepage.dart';
import 'package:bacacomic/login/loginpage.dart';
import 'package:bacacomic/profilepage.dart';
import 'package:bacacomic/searchpage.dart';
import 'package:bacacomic/settingpage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'pref_vars.dart';

import 'color.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

// void main() {
//   runApp(MaterialApp(home: MyApp()));
// }

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  isLoggedIn = prefs.getBool('isLoggedIn') ?? false;
  loggedInUsername = prefs.getString('loggedInUsername') ?? '';
  runApp(MaterialApp(home: isLoggedIn == false ? LoginPage() : MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final navigationKey = GlobalKey<CurvedNavigationBarState>();
  int index = 0;
  final screens = [
    homepage(),
    searchpage(),
    favpage(),
    profilepage(),
    settings()
  ];

  bool data = false;

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      Icon(
        Icons.home,
        size: 30,
      ),
      Icon(
        Icons.search,
        size: 30,
      ),
      Icon(
        Icons.favorite,
        size: 30,
      ),
      Icon(
        Icons.person,
        size: 30,
      ),
      Icon(
        Icons.settings,
        size: 30,
      )
    ];

    return MaterialApp(
        home: Scaffold(
      extendBody: true,
      body: screens[index],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(iconTheme: IconThemeData(color: icon)),
        child: CurvedNavigationBar(
          backgroundColor: transparent!,
          key: navigationKey,
          color: nav!,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 300),
          buttonBackgroundColor: nav,
          height: 60,
          index: index,
          items: items,
          onTap: (index) => setState(() => this.index = index),
        ),
      ),
    ));
  }
}
