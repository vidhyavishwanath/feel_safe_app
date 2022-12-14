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
  FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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
  FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDp0EG-c84gJMC0ygr6Lv8aucKFACAl-ko',
    //appId: '1:1076742568419:android:09218b66a265ee3e2708d6',
    //messagingSenderId: '1076742568419',
    //projectId: 'app-feelsafe',
    storageBucket: 'app-feelsafe.appspot.com',
  );

  FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCZCslxUyhycTKkzLl3JYVxwbSraUeqgI8',
    //appId: '1:1076742568419:ios:298cec57e97f7f652708d6',
    //messagingSenderId: '1076742568419',
    //projectId: 'app-feelsafe',
    storageBucket: 'app-feelsafe.appspot.com',
    //iosClientId: '1076742568419-act637mcd8i9vg18915snp00r5fbcb29.apps.googleusercontent.com',
    //iosBundleId: 'vivi.feelsafe.feelSafeApp',
  );
}
