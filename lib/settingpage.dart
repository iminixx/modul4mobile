import 'package:bacacomic/color.dart';
import 'package:flutter/material.dart';

class settings extends StatefulWidget {
  const settings({Key? key}) : super(key: key);

  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: white,
          body: Container(
            child: Center(
              child: GestureDetector(
                onTap: () {
                  print('kepencet');
                  if (white == Colors.white) {
                    setState(() {
                      grey900 = Color.fromARGB(255, 211, 126, 126);
                      top = Colors.black;
                      grey = Color.fromARGB(255, 156, 156, 156);
                      white = Color.fromARGB(255, 43, 43, 43);
                      black = Color.fromARGB(255, 255, 255, 255);
                      icon = Colors.purple;
                      nav = Colors.black;
                    });
                  } else {
                    setState(() {
                      grey900 = Colors.grey[900];
                      top = Colors.white70;
                      grey = Colors.grey;
                      white = Colors.white;
                      black = Colors.black;
                      maincolor = Color.fromARGB(255, 160, 35, 182);
                      icon = Colors.white;
                      nav = Colors.purple;
                    });
                  }
                },
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.dark_mode_outlined,
                        color: black,
                        size: 50,
                      ),
                      Text(
                        "Dark Mode",
                        style: TextStyle(color: black),
                      ),
                    ]),
              ),
            ),
          )),
    );
  }
}
