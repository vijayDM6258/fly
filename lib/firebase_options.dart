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
    apiKey: 'AIzaSyCFIeE2dJ-izEXXkueBWkYnkZD03CwlVa0',
    appId: '1:718256305235:web:90d0db25cb85878178c2a6',
    messagingSenderId: '718256305235',
    projectId: 'fly-chat-603cc',
    authDomain: 'fly-chat-603cc.firebaseapp.com',
    storageBucket: 'fly-chat-603cc.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAONYhyQxyrpPFvWmfj04aSBJ7sJVmCwg8',
    appId: '1:718256305235:android:da8f91f8fe88795078c2a6',
    messagingSenderId: '718256305235',
    projectId: 'fly-chat-603cc',
    storageBucket: 'fly-chat-603cc.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC_oMSsoISnECgPYyl9nJqXcYX7CpD_iXw',
    appId: '1:718256305235:ios:da94befe4947126078c2a6',
    messagingSenderId: '718256305235',
    projectId: 'fly-chat-603cc',
    storageBucket: 'fly-chat-603cc.appspot.com',
    iosBundleId: 'com.example.fly',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC_oMSsoISnECgPYyl9nJqXcYX7CpD_iXw',
    appId: '1:718256305235:ios:da94befe4947126078c2a6',
    messagingSenderId: '718256305235',
    projectId: 'fly-chat-603cc',
    storageBucket: 'fly-chat-603cc.appspot.com',
    iosBundleId: 'com.example.fly',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCFIeE2dJ-izEXXkueBWkYnkZD03CwlVa0',
    appId: '1:718256305235:web:d5b670c17af5818b78c2a6',
    messagingSenderId: '718256305235',
    projectId: 'fly-chat-603cc',
    authDomain: 'fly-chat-603cc.firebaseapp.com',
    storageBucket: 'fly-chat-603cc.appspot.com',
  );
}
