import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("Ask Me Anything"),
            backgroundColor: Colors.blue,
          ),
          body: HomePage(),
        ),
      ),
    );

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int number = 1;

  void updateState() {
    setState(() {
      number = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.blue[300],
        child: GestureDetector(
            onTap: () {
              updateState();
            },
            child: Image.asset("assets/images/ball$number.png")),
      ),
    );
  }
}
