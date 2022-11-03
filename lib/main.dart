import 'package:athul_s_babu/mobile/landing_page_mobile.dart';
import 'package:athul_s_babu/web/landing_page_web.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return LandingPageWeb();
        } else {
          return LandingPageMobile();
        }
      }),
    );
  }
}
