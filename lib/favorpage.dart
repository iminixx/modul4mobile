import 'package:flutter/material.dart';

class favpage extends StatelessWidget {
  const favpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'listview',
        theme: ThemeData(primarySwatch: Colors.purple),
        home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> images = [
    "https://images8.alphacoders.com/116/thumb-1920-1168265.png",
    "https://images8.alphacoders.com/116/thumb-1920-1168265.png",
    "https://images8.alphacoders.com/116/thumb-1920-1168265.png",
    "https://images8.alphacoders.com/116/thumb-1920-1168265.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ur fav comic goes here"),
        ),
        body: ListView.builder(
          itemBuilder: (BuildContext, index) {
            return Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(images[index]),
                ),
                title: Text("comic title"),
                subtitle: Text("last chapter u've read"),
              ),
            );
          },
          itemCount: images.length,
          shrinkWrap: true,
          padding: EdgeInsets.all(5),
          scrollDirection: Axis.vertical,
        ));
  }
}
