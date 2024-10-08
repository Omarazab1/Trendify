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
    apiKey: 'AIzaSyAbA5THEg9hlg-vsE2ieD9Gm1faFgu1OkQ',
    appId: '1:373560954146:web:d483c4749412bfb34f297b',
    messagingSenderId: '373560954146',
    projectId: 'trendify-3f56b',
    authDomain: 'trendify-3f56b.firebaseapp.com',
    storageBucket: 'trendify-3f56b.appspot.com',
    measurementId: 'G-8PHM175MNG',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCCmZe3h_29x8TKnZshSdyJGOxK8T3vtOU',
    appId: '1:373560954146:android:21c3b325cdf201414f297b',
    messagingSenderId: '373560954146',
    projectId: 'trendify-3f56b',
    storageBucket: 'trendify-3f56b.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAXMkckaZ9jBk_KYoVSKGH46_iOgAwAJq0',
    appId: '1:373560954146:ios:17e1d1feaaf03ec84f297b',
    messagingSenderId: '373560954146',
    projectId: 'trendify-3f56b',
    storageBucket: 'trendify-3f56b.appspot.com',
    iosBundleId: 'com.example.trendify',
  );
}
