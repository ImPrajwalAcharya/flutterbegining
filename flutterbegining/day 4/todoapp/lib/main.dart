

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ToDo App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  var listoftodo = [''];
  var value;
  void Addtolist(String item) {
    setState(() {
      value = '';
      item = item.toUpperCase();
      if (item != '') {
        listoftodo.add(item);
      }
      fieldText.clear();
    });
  }

  final fieldText = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ToDo'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Addtolist(value);
        },
        tooltip: 'add',
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: ListView.builder(
            itemCount: listoftodo.length,
            itemBuilder: (context, index) {
              return index == 0
                  ? Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: TextFormField(
                          decoration: InputDecoration(hintText: "Add Task"),
                          onChanged: (val) {
                            value = val;
                          },
                          onFieldSubmitted: (val) {
                            value = val;
                            Addtolist(value);
                            value = '';
                          },
                          controller: fieldText))
                  : ListTile(
                      leading: Icon(Icons.work),
                      title: Text(
                        '${listoftodo[index]}',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    );
            }),
      ),
    );
  }
}
