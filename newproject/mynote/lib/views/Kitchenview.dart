import 'package:flutter/material.dart';

class kitchen extends StatefulWidget {
  const kitchen({Key? key}) : super(key: key);

  @override
  State<kitchen> createState() => _kitchenState();
}

class _kitchenState extends State<kitchen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kitchen"),
        centerTitle: true,
      ),
      body: Column(
        children: [

        ],
      ),
    );
  }
}
