// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars
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
    // ignore: missing_enum_constant_in_switch
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
    }

    throw UnsupportedError(
      'DefaultFirebaseOptions are not supported for this platform.',
    );
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyB2TQECT7_s8IK2r1-M_WJZA7ek613djYU',
    appId: '1:254500766509:web:d96854e6d2d32d91ee89a4',
    messagingSenderId: '254500766509',
    projectId: 'imguitest-a0c77',
    authDomain: 'imguitest-a0c77.firebaseapp.com',
    databaseURL: 'https://imguitest-a0c77.firebaseio.com',
    storageBucket: 'imguitest-a0c77.appspot.com',
    measurementId: 'G-797B55SS5P',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBepEfoj8nmPntSYsU8kh0kAdfQnagScIw',
    appId: '1:254500766509:android:61b54cdb86c810acee89a4',
    messagingSenderId: '254500766509',
    projectId: 'imguitest-a0c77',
    databaseURL: 'https://imguitest-a0c77.firebaseio.com',
    storageBucket: 'imguitest-a0c77.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAsAYJhgvQy-PGdSVvnKQgMFTm-JYA-dVA',
    appId: '1:254500766509:ios:51663ad758b5d102ee89a4',
    messagingSenderId: '254500766509',
    projectId: 'imguitest-a0c77',
    databaseURL: 'https://imguitest-a0c77.firebaseio.com',
    storageBucket: 'imguitest-a0c77.appspot.com',
    androidClientId: '254500766509-0fii01iehcun4vq8kn5aaefqk1aemq89.apps.googleusercontent.com',
    iosClientId: '254500766509-5s1bv11ul5f89h1jhco8iolbs1l9gres.apps.googleusercontent.com',
    iosBundleId: 'com.smok95.jktest',
  );
}
