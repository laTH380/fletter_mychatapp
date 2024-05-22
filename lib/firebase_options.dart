// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return macos;
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyDhuidbDMdMOJOQT69fGGcjJix85OAZ7Go',
    appId: '1:906182239529:web:b4af50246a7f9bcbb78338',
    messagingSenderId: '906182239529',
    projectId: 'mychatapp-9f19a',
    authDomain: 'mychatapp-9f19a.firebaseapp.com',
    storageBucket: 'mychatapp-9f19a.appspot.com',
    measurementId: 'G-WR6KT6M59Q',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDxN1zHTKLVTbRKqxKrvkJCkfhUzSmr9ng',
    appId: '1:906182239529:android:20ccf469e1f611a1b78338',
    messagingSenderId: '906182239529',
    projectId: 'mychatapp-9f19a',
    storageBucket: 'mychatapp-9f19a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAGbrDspSmQkSIs-0DNC9AXm9oKd26o05E',
    appId: '1:906182239529:ios:b96afef52d722e07b78338',
    messagingSenderId: '906182239529',
    projectId: 'mychatapp-9f19a',
    storageBucket: 'mychatapp-9f19a.appspot.com',
    iosBundleId: 'com.example.mychatapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAGbrDspSmQkSIs-0DNC9AXm9oKd26o05E',
    appId: '1:906182239529:ios:b96afef52d722e07b78338',
    messagingSenderId: '906182239529',
    projectId: 'mychatapp-9f19a',
    storageBucket: 'mychatapp-9f19a.appspot.com',
    iosBundleId: 'com.example.mychatapp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDhuidbDMdMOJOQT69fGGcjJix85OAZ7Go',
    appId: '1:906182239529:web:c587110b0f8a78c6b78338',
    messagingSenderId: '906182239529',
    projectId: 'mychatapp-9f19a',
    authDomain: 'mychatapp-9f19a.firebaseapp.com',
    storageBucket: 'mychatapp-9f19a.appspot.com',
    measurementId: 'G-0743QYQ1K8',
  );

}