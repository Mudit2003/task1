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
    apiKey: 'AIzaSyB_Jvs3X8_zYPSBqCIP97MfjWc_jNlizlc',
    appId: '1:763911878615:web:eae354a70e804a6ea07d92',
    messagingSenderId: '763911878615',
    projectId: 'avid-health-care',
    authDomain: 'avid-health-care.firebaseapp.com',
    storageBucket: 'avid-health-care.appspot.com',
    measurementId: 'G-8B0ZVCYZBL',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBu3tT0UT2b9me7Qkbd80lBodmRbPIUq9w',
    appId: '1:763911878615:android:0ff02d92e3abca5ca07d92',
    messagingSenderId: '763911878615',
    projectId: 'avid-health-care',
    storageBucket: 'avid-health-care.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBzv-dTMLHIb0y9VdU_K8oWGQKSkLw_fBc',
    appId: '1:763911878615:ios:3f99eea10233f128a07d92',
    messagingSenderId: '763911878615',
    projectId: 'avid-health-care',
    storageBucket: 'avid-health-care.appspot.com',
    iosBundleId: 'com.example.task1',
  );
}
