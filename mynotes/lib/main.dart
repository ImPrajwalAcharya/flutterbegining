import 'package:flutter/material.dart';

void main() => runApp( MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Cafe",
        home: Scaffold(
          appBar: AppBar(
            title: Text('Daju Bhai Cafe'),
            centerTitle: true,
          ),)));


class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
          onPressed: () {
            print("hh");
          },
          child: Text("Table 1"),
          style: TextButton.styleFrom(
              onSurface: Colors.white,
              textStyle: TextStyle(fontSize: 30, color: Colors.blue),
              backgroundColor: Colors.green,
              shadowColor: Colors.red,
              elevation: 5,
              padding: EdgeInsets.all(11)),
        ),
        TextButton(
          onPressed: () {
            print("hh");
          },
          child: Text("Table 2"),
          style: TextButton.styleFrom(
              onSurface: Colors.white,
              textStyle: TextStyle(fontSize: 30, color: Colors.blue),
              backgroundColor: Colors.green,
              shadowColor: Colors.red,
              elevation: 5,
              padding: EdgeInsets.all(11)),
        ),
        TextButton(
          onPressed: () {},
          child: Text("Table 3"),
          style: TextButton.styleFrom(
              onSurface: Colors.white,
              textStyle: TextStyle(fontSize: 30, color: Colors.blue),
              backgroundColor: Colors.green,
              shadowColor: Colors.red,
              elevation: 5,
              padding: EdgeInsets.all(11)),
        ),
      ],
    );
  }
}
