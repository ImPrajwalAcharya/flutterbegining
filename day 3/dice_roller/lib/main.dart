import 'package:flutter/material.dart';
import 'dart:math';
void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "diceapp",
      home: Homepage(),
    ));

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int dicenumber = Random().nextInt(6)+1;
  void roll() {
    setState(() {
      dicenumber = Random().nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Dice Roller"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            SizedBox(height: 20),
            Center(
                child: Image.asset(
              "assets/$dicenumber.jpeg",
              height: 250,
              width: 250,
            )),
            SizedBox(height: 20),
            Center(
              child: MaterialButton(
                  color: Colors.blue,
                  onPressed: roll,
                  child: Text(
                    "Roll",
                    style: TextStyle(color: Colors.white),
                  )),
            )
          ],
        ));
  }
}
