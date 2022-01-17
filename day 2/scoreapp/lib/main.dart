// ignore_for_file: deprecated_member_use

import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

var increase = 0;
void main() {
  runApp(Scoreapp());
}

class Scoreapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ScoreApp",
      debugShowCheckedModeBanner: false,
      home: scorehome(),
    );
  }
}

class scorehome extends StatefulWidget {
  @override
  _scorehomeState createState() => _scorehomeState();
}

class _scorehomeState extends State<scorehome> {
  void increasenum() {
    setState(() {
      increase++;
    });
  }

  void decreasenum() {
    setState(() {
      increase--;
    });
  }

  void resetnum() {
    setState(() {
      increase = 0;
    });
  }

  void change(bool h) {
    setState(() {
      increase = 99;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("score changer"),
        centerTitle: true,
      ),
      body: Column(children: [
        SizedBox(
          height: 20,
        ),
        Center(
            child: Text("Score Is",
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 25,
                    fontWeight: FontWeight.bold))),
        SizedBox(
          height: 20,
        ),
        Center(
            child: Text(increase.toString(),
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 25,
                    fontWeight: FontWeight.bold))),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                Colors.black,
              )),
              child: Text(
                "Increase",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: increasenum,
            ),
            SizedBox(
              width: 20,
            ),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                  Colors.black,
                )),
                child: Text("Decrease"),
                onPressed: decreasenum),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        ElevatedButton(child: Text("Reset"), onPressed: resetnum),
      ]),
    );
  }
}
