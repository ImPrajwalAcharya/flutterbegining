import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mynote/views/Kitchenview.dart';
import 'package:mynote/views/homepage.dart';
import 'package:mynote/views/loginview.dart';
import 'package:mynote/views/registerview.dart';
import 'package:mynote/views/verifyemail.dart';
import 'firebase_options.dart';
import 'views/Menu.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
      title: 'Mynotes',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const homepage(),
      routes: {
        '/login/': (context) => const Loginview(),
        '/register/': (context) => const Registerview(),
        '/verifyemail/': (context) => const verifyemailview(),
        '/kitchen/': (context) => const kitchen(),
        '/menu/':(context) => const Menu(),
      }));
}

class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      ),
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.done:
            final users = FirebaseAuth.instance.currentUser;
            if (users != null) {
              if (users.emailVerified) {
                return Mainview();
              } else {
                return const verifyemailview();
              }
            } else {
              return Loginview();
            }
          default:
            return Scaffold(
                body: Center(
                    child: const CircularProgressIndicator(
              color: Colors.blue,
            )));
        }
      },
    );
  }
}
