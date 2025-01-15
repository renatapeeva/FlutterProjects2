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
    apiKey: 'AIzaSyBFXxTdGDiCZ3ydzj1yn_4qhUJEcT42Ll4',
    appId: '1:747533343071:web:6fdf863de1bec6fb3b7eea',
    messagingSenderId: '747533343071',
    projectId: 'lab3-213003',
    authDomain: 'lab3-213003.firebaseapp.com',
    storageBucket: 'lab3-213003.firebasestorage.app',
    measurementId: 'G-8MMV29ENTV',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCHn2Hfb87iwxhPHO5pmdmBO4OU9IVTGVc',
    appId: '1:747533343071:android:43fbbff04c3c3a513b7eea',
    messagingSenderId: '747533343071',
    projectId: 'lab3-213003',
    storageBucket: 'lab3-213003.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBzIr7wHkC-vWSkuSAPgOyD_mfHPcEgMEY',
    appId: '1:747533343071:ios:e24472ad4a0496cd3b7eea',
    messagingSenderId: '747533343071',
    projectId: 'lab3-213003',
    storageBucket: 'lab3-213003.firebasestorage.app',
    iosBundleId: 'com.example.lab2213003',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBzIr7wHkC-vWSkuSAPgOyD_mfHPcEgMEY',
    appId: '1:747533343071:ios:e24472ad4a0496cd3b7eea',
    messagingSenderId: '747533343071',
    projectId: 'lab3-213003',
    storageBucket: 'lab3-213003.firebasestorage.app',
    iosBundleId: 'com.example.lab2213003',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBFXxTdGDiCZ3ydzj1yn_4qhUJEcT42Ll4',
    appId: '1:747533343071:web:9b207cf7d2d3e2243b7eea',
    messagingSenderId: '747533343071',
    projectId: 'lab3-213003',
    authDomain: 'lab3-213003.firebaseapp.com',
    storageBucket: 'lab3-213003.firebasestorage.app',
    measurementId: 'G-9KGLLK42TX',
  );
}
