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
    apiKey: 'AIzaSyC2U-AhnwL0nXxbTnL2JFu1ircrWsCV7p4',
    appId: '1:467849922839:web:8262f35f53eccdd55a0f52',
    messagingSenderId: '467849922839',
    projectId: 'moments-capture-eadb3',
    authDomain: 'moments-capture-eadb3.firebaseapp.com',
    storageBucket: 'moments-capture-eadb3.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDVejYX86uWU943GdSWX1ld6973Off5wgg',
    appId: '1:467849922839:android:ba91f654c5e0245f5a0f52',
    messagingSenderId: '467849922839',
    projectId: 'moments-capture-eadb3',
    storageBucket: 'moments-capture-eadb3.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBCOET33MWWOrpicdPLTe7u1j5wdeloCbQ',
    appId: '1:467849922839:ios:c875708c839baecc5a0f52',
    messagingSenderId: '467849922839',
    projectId: 'moments-capture-eadb3',
    storageBucket: 'moments-capture-eadb3.appspot.com',
    iosBundleId: 'com.example.momentsCapture',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBCOET33MWWOrpicdPLTe7u1j5wdeloCbQ',
    appId: '1:467849922839:ios:7ddea4146d70ad6f5a0f52',
    messagingSenderId: '467849922839',
    projectId: 'moments-capture-eadb3',
    storageBucket: 'moments-capture-eadb3.appspot.com',
    iosBundleId: 'com.example.momentsCapture.RunnerTests',
  );
}
