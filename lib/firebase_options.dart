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
    apiKey: 'AIzaSyC5dz4m6JuIrAFwMaWXwbKx8Vd7uDJ2SGA',
    appId: '1:591500431863:web:6008b0422b3e8cd28c1ef2',
    messagingSenderId: '591500431863',
    projectId: 'athulsb-41ac1',
    authDomain: 'athulsb-41ac1.firebaseapp.com',
    storageBucket: 'athulsb-41ac1.appspot.com',
    measurementId: 'G-TS7Q213J0C',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAbsKwuzbMx1I4R64kWVrfe-hcb4Tk1WEs',
    appId: '1:591500431863:android:902d956224b2c79c8c1ef2',
    messagingSenderId: '591500431863',
    projectId: 'athulsb-41ac1',
    storageBucket: 'athulsb-41ac1.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDEz4_c3kIPhMx2k02P36Wg3hio0akOwE0',
    appId: '1:591500431863:ios:ff6e12b0dea99bd78c1ef2',
    messagingSenderId: '591500431863',
    projectId: 'athulsb-41ac1',
    storageBucket: 'athulsb-41ac1.appspot.com',
    iosClientId: '591500431863-fd87u15asphjmc8n8jl0k1e50httbovj.apps.googleusercontent.com',
    iosBundleId: 'athulsbabu.com.athulSBabu',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDEz4_c3kIPhMx2k02P36Wg3hio0akOwE0',
    appId: '1:591500431863:ios:ff6e12b0dea99bd78c1ef2',
    messagingSenderId: '591500431863',
    projectId: 'athulsb-41ac1',
    storageBucket: 'athulsb-41ac1.appspot.com',
    iosClientId: '591500431863-fd87u15asphjmc8n8jl0k1e50httbovj.apps.googleusercontent.com',
    iosBundleId: 'athulsbabu.com.athulSBabu',
  );
}
