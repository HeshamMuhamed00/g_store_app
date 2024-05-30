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
    apiKey: 'AIzaSyA0KPGCSdhaxYwSWHCIW2PBkI5A0orP9JY',
    appId: '1:145404081864:web:3f2cacc42fb0fd813b97fd',
    messagingSenderId: '145404081864',
    projectId: 'g-store-app-8698f',
    authDomain: 'g-store-app-8698f.firebaseapp.com',
    storageBucket: 'g-store-app-8698f.appspot.com',
    measurementId: 'G-Z0X9NPJSHE',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyANjULJRP079Q5w96BIW_sX3yZNWc5img4',
    appId: '1:145404081864:android:c1e3d1487c73d6913b97fd',
    messagingSenderId: '145404081864',
    projectId: 'g-store-app-8698f',
    storageBucket: 'g-store-app-8698f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAa1cCC3Iu7eNqGrCnjO2qpmcLDO91O4ow',
    appId: '1:145404081864:ios:07a7f063f114ebf13b97fd',
    messagingSenderId: '145404081864',
    projectId: 'g-store-app-8698f',
    storageBucket: 'g-store-app-8698f.appspot.com',
    iosBundleId: 'com.example.gStoreApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAa1cCC3Iu7eNqGrCnjO2qpmcLDO91O4ow',
    appId: '1:145404081864:ios:07a7f063f114ebf13b97fd',
    messagingSenderId: '145404081864',
    projectId: 'g-store-app-8698f',
    storageBucket: 'g-store-app-8698f.appspot.com',
    iosBundleId: 'com.example.gStoreApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyA0KPGCSdhaxYwSWHCIW2PBkI5A0orP9JY',
    appId: '1:145404081864:web:ca773900ab42d6783b97fd',
    messagingSenderId: '145404081864',
    projectId: 'g-store-app-8698f',
    authDomain: 'g-store-app-8698f.firebaseapp.com',
    storageBucket: 'g-store-app-8698f.appspot.com',
    measurementId: 'G-N27TD06J83',
  );
}