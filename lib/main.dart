import 'package:athul_s_babu/mobile/landing_page_mobile.dart';
import 'package:athul_s_babu/web/landing_page_web.dart';
import 'package:athul_s_babu/routes.dart';
import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyC5dz4m6JuIrAFwMaWXwbKx8Vd7uDJ2SGA",
            authDomain: "athulsb-41ac1.firebaseapp.com",
            projectId: "athulsb-41ac1",
            storageBucket: "athulsb-41ac1.appspot.com",
            messagingSenderId: "591500431863",
            appId: "1:591500431863:web:6008b0422b3e8cd28c1ef2",
            measurementId: "G-TS7Q213J0C"));
  } else {
    await Firebase.initializeApp;
  }

  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (settings) => Routes.generateRoute(settings),
      initialRoute: '/',
    );
  }
}
