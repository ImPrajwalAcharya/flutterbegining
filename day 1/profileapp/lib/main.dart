import 'package:flutter/material.dart';

void main() {
  var apptitle = "Prajwal";
  runApp(MaterialApp(
    title: apptitle,
    debugShowCheckedModeBanner: false,
    home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(apptitle),
        ),
        body: Column(
          children: [
            SizedBox(height: 10),
            Align(
                child: Image.network(
                    "https://scontent.fktm8-1.fna.fbcdn.net/v/t1.6435-9/144664001_2835428313364776_9087324697072083545_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=puGiGetWPy8AX-cYKYb&_nc_ht=scontent.fktm8-1.fna&oh=00_AT8zL7QQxYKkfJlSCXJXKpb3F4JHHYAza45z_yQgKup7rA&oe=61E2023B",
                    height: 400,
                    width: 400)),
            SizedBox(height: 10),
            Text(
              'Name:Prajwal Acharya',
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text('Computer Engineer',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.green,
                    fontWeight: FontWeight.bold)),
            SizedBox(height: 5),
            Text('Email:Prajwalsmart888@gmail.com',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.green,
                    fontWeight: FontWeight.bold)),
            SizedBox(height: 5),
            Text('Phone:9869041186',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.green,
                    fontWeight: FontWeight.bold))
          ],
        )),
  ));
}
