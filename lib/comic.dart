import 'dart:math';
import 'package:bacacomic/color.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'main.dart';

class tbate extends StatefulWidget {
  const tbate({Key? key}) : super(key: key);

  @override
  State<tbate> createState() => _tbateState();
}

class _tbateState extends State<tbate> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: white,
        body: SingleChildScrollView(
          child: Container(
            child: Column(children: [
              Stack(children: [
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: 250,
                    child: Image.network(
                      'https://static.vecteezy.com/system/resources/previews/002/179/247/non_2x/dark-purple-blurred-background-vector.jpg',
                      fit: BoxFit.cover,
                    )),
                SafeArea(
                  child: Container(
                    height: 230,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Icon(Icons.arrow_back_ios,
                                      color: Colors.white)),
                              Row(
                                children: [
                                  Icon(
                                    Icons.download,
                                    color: Colors.white,
                                  ),
                                  Icon(Icons.download_done, color: Colors.white)
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 25, vertical: 10),
                          child: Row(
                            children: [
                              Container(
                                height: 140,
                                width: 100,
                                color: Colors.purple,
                              ),
                              Padding(padding: const EdgeInsets.only(left: 15)),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "The Beginning After The End",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  ),
                                  Text("TurtleMe"),
                                  Text("Action")
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    Container(
                      child: Column(children: [
                        Text(
                            "When a kind dragon sacrifices her life to protect him, Arthur resolves to live a sincere, kind, and courageous life with those he loves. With the help of a lost elf princess and the Elven Kingdom of Elenoir, Arthur begins his long journey to find his true place in the world.",
                            style: TextStyle(color: black))
                      ]),
                    ),
                    Container(
                      height: 65,
                      width: 800,
                      decoration: BoxDecoration(
                          border: const Border(
                              bottom:
                                  BorderSide(color: Colors.grey, width: 0.30))),
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "4,72",
                                  style: TextStyle(
                                    color: maincolor,
                                    fontSize: 20,
                                  ),
                                ),
                                Text("Ratings", style: TextStyle(color: black))
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  "2 Days Ago",
                                  style: TextStyle(
                                    color: maincolor,
                                    fontSize: 20,
                                  ),
                                ),
                                Text("Last Updated",
                                    style: TextStyle(color: black))
                              ],
                            )
                          ]),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Ongoing",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, color: black),
                            ),
                            Text("See All...",
                                style: TextStyle(color: maincolor))
                          ]),
                    ),
                    Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              color: Color.fromARGB(255, 209, 209, 209),
                              height: 50,
                              width: 80,
                              child: Text("Ch. 001"),
                              alignment: Alignment.center,
                            ),
                            Container(
                              color: Color.fromARGB(255, 209, 209, 209),
                              height: 50,
                              width: 80,
                              child: Text("Ch. 001"),
                              alignment: Alignment.center,
                            ),
                            Container(
                              color: Color.fromARGB(255, 209, 209, 209),
                              height: 50,
                              width: 80,
                              child: Text("Ch. 001"),
                              alignment: Alignment.center,
                            ),
                            Container(
                              color: Color.fromARGB(255, 209, 209, 209),
                              height: 50,
                              width: 80,
                              child: Text("Ch. 001"),
                              alignment: Alignment.center,
                            )
                          ]),
                    )
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
