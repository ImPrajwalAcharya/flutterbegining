import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class verifyemailview extends StatefulWidget {
  const verifyemailview({Key? key}) : super(key: key);

  @override
  State<verifyemailview> createState() => _verifyemailviewState();
}

class _verifyemailviewState extends State<verifyemailview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text("Verify Email"),
      ),
      body: Column(children: [
        Text(" Please Verify Email addresss"),
        TextButton(
            onPressed: () async {
              final users = FirebaseAuth.instance.currentUser;
              await users?.sendEmailVerification();
            },
            child: const Text("Send Verification"))
      ]),
    );
  }
}