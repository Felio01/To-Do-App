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
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDUtzExCkGLtZoOF5OtGQfTvpAmdIHybwg',
    appId: '1:874860019917:web:e91c52320b491fb24aa984',
    messagingSenderId: '874860019917',
    projectId: 'flutter-asg3',
    authDomain: 'flutter-asg3.firebaseapp.com',
    storageBucket: 'flutter-asg3.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBLfRiK4eVz5lBYH_CuP4QPqwjgfPIdaJ4',
    appId: '1:874860019917:android:9cc7b471fc25cbfa4aa984',
    messagingSenderId: '874860019917',
    projectId: 'flutter-asg3',
    storageBucket: 'flutter-asg3.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBymBUPlZ3O2KBLPQkmbNTxTCDaOh292Lo',
    appId: '1:874860019917:ios:d7c214e1c100b4064aa984',
    messagingSenderId: '874860019917',
    projectId: 'flutter-asg3',
    storageBucket: 'flutter-asg3.appspot.com',
    iosBundleId: 'com.example.madeFirebase',
  );
}
