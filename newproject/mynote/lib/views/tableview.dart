import 'dart:ffi';

import 'package:flutter/material.dart';

class Tables extends StatefulWidget {
  var tableno;
  Tables(this.tableno);

  @override
  State<Tables> createState() => _TablesState();
}

class _TablesState extends State<Tables> {

  @override
  Widget build(BuildContext context) {
    var tablesno = widget.tableno;
    return Scaffold(
      appBar: AppBar(
        title: Text("Table $tablesno"),
      ),
      body:
      Column(
      
      )
    );
  }
}
