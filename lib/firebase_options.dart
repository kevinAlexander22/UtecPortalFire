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
        return macos;
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
    apiKey: 'AIzaSyAoRrAy1Sbp9leMhDHqgvR_CkxWJ_wieY4',
    appId: '1:459412259648:web:f67c7b0f936cae47d4b0a5',
    messagingSenderId: '459412259648',
    projectId: 'test-38802',
    authDomain: 'test-38802.firebaseapp.com',
    storageBucket: 'test-38802.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAI7SRKFuU4KEuBPQP2mLu2dwm_Vso1bik',
    appId: '1:459412259648:android:2838d4eec2fc59bfd4b0a5',
    messagingSenderId: '459412259648',
    projectId: 'test-38802',
    storageBucket: 'test-38802.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAOJ2mx83FaQo1-FlGjhrx-EPwQhuK9mYg',
    appId: '1:459412259648:ios:928d78ac7d5f36b9d4b0a5',
    messagingSenderId: '459412259648',
    projectId: 'test-38802',
    storageBucket: 'test-38802.appspot.com',
    iosBundleId: 'com.utecportal.portalutec',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAOJ2mx83FaQo1-FlGjhrx-EPwQhuK9mYg',
    appId: '1:459412259648:ios:967e39d893ac2ce7d4b0a5',
    messagingSenderId: '459412259648',
    projectId: 'test-38802',
    storageBucket: 'test-38802.appspot.com',
    iosBundleId: 'com.utecportal.portalutec.RunnerTests',
  );
}
