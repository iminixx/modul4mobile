import 'package:bacacomic/favorpage.dart';
import 'package:bacacomic/login/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'color.dart';
import 'comic.dart';

class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void logout() async {
      final pref = await SharedPreferences.getInstance();
      pref.clear();
    }

    return MaterialApp(
        home: Scaffold(
      extendBody: true,
      appBar: AppBar(
        title: Text(
          'WIBU',
          style: TextStyle(
            color: Colors.purple,
            fontSize: 23,
          ),
        ),
        backgroundColor: top,
        actions: [
          IconButton(
              onPressed: () {
                logout();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => LoginPage()));
              },
              icon: Icon(Icons.exit_to_app))
        ],
      ),
      body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            color: white,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => tbate()));
                },
                child: Container(
                  child: Image.network(
                    'https://images8.alphacoders.com/116/thumb-1920-1168265.png',
                    fit: BoxFit.cover,
                  ),
                  color: maincolor,
                  width: double.infinity,
                  height: 225,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Hot Updates",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: black),
                        ),
                        Text(
                          "More...",
                          style: TextStyle(color: maincolor),
                        )
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => favpage()));
                                },
                                child: Container(
                                  child: Image.network(
                                    'https://cdn.myanimelist.net/images/manga/3/234100l.jpg',
                                    fit: BoxFit.cover,
                                  ),
                                  width: 100,
                                  height: 140,
                                  color: maincolor,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                  width: 100,
                                  height: 30,
                                  child: Text("Solo Levelling",
                                      style: TextStyle(color: black))),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Up to Ch. 180",
                                style: TextStyle(fontSize: 13, color: grey),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Image.network(
                                  'https://d30womf5coomej.cloudfront.net/sa/69/3b1124c5-f877-4e3b-9e24-0ad3932c7922_z.jpg',
                                  fit: BoxFit.cover,
                                ),
                                width: 100,
                                height: 140,
                                color: maincolor,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                  width: 100,
                                  height: 30,
                                  child: Text("The Beginning After The End",
                                      style: TextStyle(color: black))),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Up to Ch. 141",
                                style: TextStyle(fontSize: 13, color: grey),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Image.network(
                                    'https://static.wikia.nocookie.net/koreanwebtoons/images/7/77/Wind_Breaker.jpg/revision/latest/scale-to-width-down/300?cb=20210810142040',
                                    fit: BoxFit.cover),
                                width: 100,
                                height: 140,
                                color: maincolor,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                  width: 100,
                                  height: 30,
                                  child: Text("Wind Breaker",
                                      style: TextStyle(color: black))),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Up to Ch. 389",
                                style: TextStyle(fontSize: 13, color: grey),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Image.network(
                                  'https://cdn.myanimelist.net/images/manga/1/247171l.jpg',
                                  fit: BoxFit.cover,
                                ),
                                width: 100,
                                height: 140,
                                color: maincolor,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                  width: 100,
                                  height: 30,
                                  child: Text("Tomb Raider King",
                                      style: TextStyle(color: black))),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Up to Ch. 316",
                                style: TextStyle(fontSize: 13, color: grey),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Image.network(
                                  'https://i.imgur.com/oGlwd5X.jpg',
                                  fit: BoxFit.cover,
                                ),
                                width: 100,
                                height: 140,
                                color: maincolor,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                  width: 100,
                                  height: 30,
                                  child: Text("Omniscient Reader's Viewpoint",
                                      style: TextStyle(color: black))),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Up to Ch. 104",
                                style: TextStyle(fontSize: 13, color: grey),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Image.network(
                                  'https://preview.redd.it/zllxib990ny71.jpg?width=640&crop=smart&auto=webp&s=dab7277141db2bea4a2f04432fa53958c9ae74dd',
                                  fit: BoxFit.cover,
                                ),
                                width: 100,
                                height: 140,
                                color: maincolor,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                  width: 100,
                                  height: 30,
                                  child: Text("Nano Machine",
                                      style: TextStyle(color: black))),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Up to Ch. 101",
                                style: TextStyle(fontSize: 13, color: grey),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ]),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Who Doesn't Like Manga?",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: black),
                        ),
                        Text(
                          "More...",
                          style: TextStyle(color: maincolor),
                        )
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Image.network(
                                  'https://static.duniaku.net/2018/11/One-Piece-volume-91-1.jpg',
                                  fit: BoxFit.cover,
                                ),
                                width: 100,
                                height: 140,
                                color: maincolor,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                  width: 100,
                                  height: 30,
                                  child: Text("One Piece",
                                      style: TextStyle(color: black))),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Up to Ch. 1046",
                                style: TextStyle(fontSize: 13, color: grey),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Image.network(
                                  'https://www.bukukita.com/babacms/displaybuku/116867_f.jpg',
                                  fit: BoxFit.cover,
                                ),
                                width: 100,
                                height: 140,
                                color: maincolor,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                  width: 100,
                                  height: 30,
                                  child: Text("Spy X Family",
                                      style: TextStyle(color: black))),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Up to Ch. 62",
                                style: TextStyle(fontSize: 13, color: grey),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Image.network(
                                    'https://preview.redd.it/w8fcaeju9ck81.jpg?auto=webp&s=af5f2897ee9091b380a17e248a36d728cf191db7',
                                    fit: BoxFit.cover),
                                width: 100,
                                height: 140,
                                color: maincolor,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                  width: 100,
                                  height: 30,
                                  child: Text("Bleach",
                                      style: TextStyle(color: black))),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Up to Ch. 686",
                                style: TextStyle(fontSize: 13, color: grey),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Image.network(
                                  'https://comicvine.gamespot.com/a/uploads/scale_small/6/67663/4724602-71.jpg',
                                  fit: BoxFit.cover,
                                ),
                                width: 100,
                                height: 140,
                                color: maincolor,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                  width: 100,
                                  height: 30,
                                  child: Text("Naruto",
                                      style: TextStyle(color: black))),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Up to Ch. 700",
                                style: TextStyle(fontSize: 13, color: grey),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Image.network(
                                  'https://pbs.twimg.com/media/E0OP0hOWEAIlEIS.jpg:large',
                                  fit: BoxFit.cover,
                                ),
                                width: 100,
                                height: 140,
                                color: maincolor,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                  width: 100,
                                  height: 30,
                                  child: Text("Jujur Kasian",
                                      style: TextStyle(color: black))),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Up to Ch. 180",
                                style: TextStyle(fontSize: 13, color: grey),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Image.network(
                                  'https://i1.wp.com/anievo.id/wp-content/uploads/2021/03/24234234.jpg',
                                  fit: BoxFit.cover,
                                ),
                                width: 100,
                                height: 140,
                                color: maincolor,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                  width: 100,
                                  height: 30,
                                  child: Text("Boku No Hero Academia",
                                      style: TextStyle(color: black))),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Up to Ch. 340",
                                style: TextStyle(fontSize: 13, color: grey),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ]),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Weekly Ranking",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: black),
                        ),
                        Text(
                          "More...",
                          style: TextStyle(color: maincolor),
                        )
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 10),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Image.network(
                                      'https://static.duniaku.net/2018/11/One-Piece-volume-91-1.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                    width: 60,
                                    height: 100,
                                    color: maincolor,
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.only(left: 20)),
                                  Container(
                                      height: 100,
                                      width: 250,
                                      decoration: BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(
                                                  color: black!, width: 0.30))),
                                      child: Row(
                                        children: [
                                          Text(
                                            "1",
                                            style: TextStyle(
                                                fontSize: 40,
                                                color: grey,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 13)),
                                          Text(
                                            "One Piece",
                                            style: TextStyle(
                                                fontSize: 17, color: black),
                                          ),
                                        ],
                                      )),
                                ],
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(top: 13)),
                            Container(
                              margin: EdgeInsets.only(right: 10),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Image.network(
                                      'https://static.duniaku.net/2018/11/One-Piece-volume-91-1.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                    width: 60,
                                    height: 100,
                                    color: maincolor,
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.only(left: 20)),
                                  Container(
                                      height: 100,
                                      width: 250,
                                      decoration: BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(
                                                  color: black!, width: 0.30))),
                                      child: Row(
                                        children: [
                                          Text(
                                            "2",
                                            style: TextStyle(
                                                fontSize: 40,
                                                color: grey,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 13)),
                                          Text(
                                            "Solo Levelling",
                                            style: TextStyle(
                                                fontSize: 17, color: black),
                                          ),
                                        ],
                                      )),
                                ],
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(top: 13)),
                            Container(
                              margin: EdgeInsets.only(right: 10),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Image.network(
                                      'https://static.duniaku.net/2018/11/One-Piece-volume-91-1.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                    width: 60,
                                    height: 100,
                                    color: maincolor,
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.only(left: 20)),
                                  Container(
                                      height: 100,
                                      width: 250,
                                      decoration: BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(
                                                  color: black!, width: 0.30))),
                                      child: Row(
                                        children: [
                                          Text(
                                            "3",
                                            style: TextStyle(
                                                fontSize: 40,
                                                color: grey,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 13)),
                                          Text(
                                            "The Beginning After The End",
                                            style: TextStyle(
                                                fontSize: 17, color: black),
                                          ),
                                        ],
                                      )),
                                ],
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(top: 13)),
                            Container(
                              margin: EdgeInsets.only(right: 10),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Image.network(
                                      'https://static.duniaku.net/2018/11/One-Piece-volume-91-1.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                    width: 60,
                                    height: 100,
                                    color: maincolor,
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.only(left: 20)),
                                  Container(
                                      height: 100,
                                      width: 250,
                                      decoration: BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(
                                                  color: black!, width: 0.30))),
                                      child: Row(
                                        children: [
                                          Text(
                                            "4",
                                            style: TextStyle(
                                                fontSize: 40,
                                                color: grey,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 13)),
                                          Text(
                                            "Spy X Family",
                                            style: TextStyle(
                                                fontSize: 17, color: black),
                                          ),
                                        ],
                                      )),
                                ],
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(top: 13)),
                            Container(
                              margin: EdgeInsets.only(right: 10),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Image.network(
                                      'https://static.duniaku.net/2018/11/One-Piece-volume-91-1.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                    width: 60,
                                    height: 100,
                                    color: maincolor,
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.only(left: 20)),
                                  Container(
                                      height: 100,
                                      width: 250,
                                      decoration: BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(
                                                  color: black!, width: 0.30))),
                                      child: Row(
                                        children: [
                                          Text(
                                            "5",
                                            style: TextStyle(
                                                fontSize: 40,
                                                color: grey,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 13)),
                                          Text(
                                            "Omnscient Reader's Viewpoint",
                                            style: TextStyle(
                                                fontSize: 17, color: black),
                                          ),
                                        ],
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 10),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Image.network(
                                      'https://static.duniaku.net/2018/11/One-Piece-volume-91-1.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                    width: 60,
                                    height: 100,
                                    color: maincolor,
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.only(left: 20)),
                                  Container(
                                      height: 100,
                                      width: 250,
                                      decoration: BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(
                                                  color: black!, width: 0.30))),
                                      child: Row(
                                        children: [
                                          Text(
                                            "1",
                                            style: TextStyle(
                                                fontSize: 40,
                                                color: grey,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 13)),
                                          Text(
                                            "One Piece",
                                            style: TextStyle(
                                                fontSize: 17, color: black),
                                          ),
                                        ],
                                      )),
                                ],
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(top: 13)),
                            Container(
                              margin: EdgeInsets.only(right: 10),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Image.network(
                                      'https://static.duniaku.net/2018/11/One-Piece-volume-91-1.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                    width: 60,
                                    height: 100,
                                    color: maincolor,
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.only(left: 20)),
                                  Container(
                                      height: 100,
                                      width: 250,
                                      decoration: BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(
                                                  color: black!, width: 0.30))),
                                      child: Row(
                                        children: [
                                          Text(
                                            "2",
                                            style: TextStyle(
                                                fontSize: 40,
                                                color: grey,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 13)),
                                          Text(
                                            "Solo Levelling",
                                            style: TextStyle(
                                                fontSize: 17, color: black),
                                          ),
                                        ],
                                      )),
                                ],
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(top: 13)),
                            Container(
                              margin: EdgeInsets.only(right: 10),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Image.network(
                                      'https://static.duniaku.net/2018/11/One-Piece-volume-91-1.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                    width: 60,
                                    height: 100,
                                    color: maincolor,
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.only(left: 20)),
                                  Container(
                                      height: 100,
                                      width: 250,
                                      decoration: BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(
                                                  color: black!, width: 0.30))),
                                      child: Row(
                                        children: [
                                          Text(
                                            "3",
                                            style: TextStyle(
                                                fontSize: 40,
                                                color: grey,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 13)),
                                          Text(
                                            "The Beginning After The End",
                                            style: TextStyle(
                                                fontSize: 17, color: black),
                                          ),
                                        ],
                                      )),
                                ],
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(top: 13)),
                            Container(
                              margin: EdgeInsets.only(right: 10),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Image.network(
                                      'https://static.duniaku.net/2018/11/One-Piece-volume-91-1.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                    width: 60,
                                    height: 100,
                                    color: maincolor,
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.only(left: 20)),
                                  Container(
                                      height: 100,
                                      width: 250,
                                      decoration: BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(
                                                  color: black!, width: 0.30))),
                                      child: Row(
                                        children: [
                                          Text(
                                            "4",
                                            style: TextStyle(
                                                fontSize: 40,
                                                color: grey,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 13)),
                                          Text(
                                            "Spy X Family",
                                            style: TextStyle(
                                                fontSize: 17, color: black),
                                          ),
                                        ],
                                      )),
                                ],
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(top: 13)),
                            Container(
                              margin: EdgeInsets.only(right: 10),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Image.network(
                                      'https://static.duniaku.net/2018/11/One-Piece-volume-91-1.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                    width: 60,
                                    height: 100,
                                    color: maincolor,
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.only(left: 20)),
                                  Container(
                                      height: 100,
                                      width: 250,
                                      decoration: BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(
                                                  color: black!, width: 0.30))),
                                      child: Row(
                                        children: [
                                          Text(
                                            "5",
                                            style: TextStyle(
                                                fontSize: 40,
                                                color: grey,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 13)),
                                          Text(
                                            "Omnscient Reader's Viewpoint",
                                            style: TextStyle(
                                                fontSize: 17, color: black),
                                          ),
                                        ],
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 70,
                  )
                ]),
              ),
            ]),
          )),
    ));
  }
}
