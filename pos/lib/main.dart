import 'package:flutter/material.dart';

void main() => runApp(posMain());
class posMain extends StatelessWidget {
  const posMain({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"Daju bhai Cafe",
home: mainPage(),
    );
  }
}
class mainPage extends StatefulWidget {
  const mainPage({ Key? key }) : super(key: key);

  @override
  State<mainPage> createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Daju Bhai Cafe"),
        backgroundColor: Colors.green,
      ),
      body:Center(child: ,)
    );
  }
}