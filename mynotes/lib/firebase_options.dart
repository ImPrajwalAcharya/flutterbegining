// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCmVjHEuz1dT9LqCs3YnDN7kxXGtqI9F6c',
    appId: '1:536008184497:web:56ca3cc29b6f3e0ac80890',
    messagingSenderId: '536008184497',
    projectId: 'helo-my-app-mynote',
    authDomain: 'helo-my-app-mynote.firebaseapp.com',
    storageBucket: 'helo-my-app-mynote.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCJAEU7YHf62yfW51qN2Mz4jHQkiLh1OmA',
    appId: '1:536008184497:android:ba19bf54fc7d0d58c80890',
    messagingSenderId: '536008184497',
    projectId: 'helo-my-app-mynote',
    storageBucket: 'helo-my-app-mynote.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBmbOoYyaayHgwKcuwbvdTJiG1RSrVTOfg',
    appId: '1:536008184497:ios:5507717a47a0011cc80890',
    messagingSenderId: '536008184497',
    projectId: 'helo-my-app-mynote',
    storageBucket: 'helo-my-app-mynote.appspot.com',
    iosClientId: '536008184497-n5c4h0f1ef3ndp4315igu4rjdh7tkv0f.apps.googleusercontent.com',
    iosBundleId: 'com.example.mynotes',
  );
}
