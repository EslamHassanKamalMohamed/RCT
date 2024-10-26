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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCnaAjrfH8dRamqpHQwuSOJeeUACVGkLPE',
    appId: '1:288573191873:android:63b384c6bad6f926a2c640',
    messagingSenderId: '288573191873',
    projectId: 'rct-app-88887',
    storageBucket: 'rct-app-88887.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC0-YdEmMH5GwSWB4EFP02rbHDahLeaeo0',
    appId: '1:288573191873:ios:1416bc310077e3e8a2c640',
    messagingSenderId: '288573191873',
    projectId: 'rct-app-88887',
    storageBucket: 'rct-app-88887.appspot.com',
    iosBundleId: 'com.futureapp.rct',
  );

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCCSyYXByYrRhGo6TOjfuuxsSLemTP07oQ',
    appId: '1:288573191873:web:d9595e35c7e36b04a2c640',
    messagingSenderId: '288573191873',
    projectId: 'rct-app-88887',
    authDomain: 'rct-app-88887.firebaseapp.com',
    storageBucket: 'rct-app-88887.appspot.com',
    measurementId: 'G-44YE6EJY6P',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC0-YdEmMH5GwSWB4EFP02rbHDahLeaeo0',
    appId: '1:288573191873:ios:1c41c263b8287e9ea2c640',
    messagingSenderId: '288573191873',
    projectId: 'rct-app-88887',
    storageBucket: 'rct-app-88887.appspot.com',
    iosBundleId: 'com.example.rctApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCCSyYXByYrRhGo6TOjfuuxsSLemTP07oQ',
    appId: '1:288573191873:web:2bbd91fc888b2ec2a2c640',
    messagingSenderId: '288573191873',
    projectId: 'rct-app-88887',
    authDomain: 'rct-app-88887.firebaseapp.com',
    storageBucket: 'rct-app-88887.appspot.com',
    measurementId: 'G-WKZ1CT4ER1',
  );

}