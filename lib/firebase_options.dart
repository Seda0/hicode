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
    apiKey: 'AIzaSyDdyAZVdmG9FK5LcL8uXlMOxy6pn3MgJ3M',
    appId: '1:374554111753:web:a5ba8ab165fdd7b9012dd8',
    messagingSenderId: '374554111753',
    projectId: 'hicode-4e00b',
    authDomain: 'hicode-4e00b.firebaseapp.com',
    storageBucket: 'hicode-4e00b.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBcgCpxqAJfDCXVe-HVBQkXkHW0pfHDNCM',
    appId: '1:374554111753:android:f19b1f0518fa7ec2012dd8',
    messagingSenderId: '374554111753',
    projectId: 'hicode-4e00b',
    storageBucket: 'hicode-4e00b.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDL-a2V9bh5UalfyJVoA4Kpy1M2Dzc7-CU',
    appId: '1:374554111753:ios:3843e9b342ee03e2012dd8',
    messagingSenderId: '374554111753',
    projectId: 'hicode-4e00b',
    storageBucket: 'hicode-4e00b.firebasestorage.app',
    iosBundleId: 'com.example.hicode',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDL-a2V9bh5UalfyJVoA4Kpy1M2Dzc7-CU',
    appId: '1:374554111753:ios:3843e9b342ee03e2012dd8',
    messagingSenderId: '374554111753',
    projectId: 'hicode-4e00b',
    storageBucket: 'hicode-4e00b.firebasestorage.app',
    iosBundleId: 'com.example.hicode',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDdyAZVdmG9FK5LcL8uXlMOxy6pn3MgJ3M',
    appId: '1:374554111753:web:bb1045261c015406012dd8',
    messagingSenderId: '374554111753',
    projectId: 'hicode-4e00b',
    authDomain: 'hicode-4e00b.firebaseapp.com',
    storageBucket: 'hicode-4e00b.firebasestorage.app',
  );
}
