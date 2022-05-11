import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:mynote/views/Kitchenview.dart';
import 'package:mynote/views/Menu.dart';
import './tableview.dart';

class Mainview extends StatefulWidget {
  const Mainview({Key? key}) : super(key: key);

  @override
  State<Mainview> createState() => _MainviewState();
}

class _MainviewState extends State<Mainview> {
  Widget _maketable(int index) {
    if (index == 0) {
      return Center(child: Text(' Kitchen '));
    } else if (index == 1) {
      return Center(child: Text(' Menu '));
    } else {
      return Center(child: Text('Table ' + '$index'));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Daju Bhai Cafe"),
        centerTitle: true,
      ),
      body: GridView.builder(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: 21,
        itemBuilder: (BuildContext context, int index) {
          return Card(
              color: Colors.primaries[index % 5],
              // ignore: unnecessary_new
              child: new InkResponse(
                child: _maketable(index),
                onTap: () {
                  if (index == 0) {
                    Navigator.of(context)
                        .pushNamedAndRemoveUntil('/kitchen/', (route) => true);
                  } else if (index == 1) {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => Menu()));
                  } else {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Tables(index)));
                  }
                },
              ));
        },
      ),
    );
  }
}
