import 'dart:js';

import 'package:athul_s_babu/mobile/about_mobile.dart';
import 'package:athul_s_babu/mobile/blog_mobile.dart';
import 'package:athul_s_babu/mobile/contact_mobile.dart';
import 'package:athul_s_babu/mobile/landing_page_mobile.dart';
import 'package:athul_s_babu/mobile/works_mobile.dart';
import 'package:athul_s_babu/web/about_web.dart';
import 'package:athul_s_babu/web/blog_web.dart';
import 'package:athul_s_babu/web/contact_web.dart';
import 'package:athul_s_babu/web/landing_page_web.dart';
import 'package:athul_s_babu/web/works_web.dart';
import 'package:flutter/material.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
            settings: settings,
            builder: (_) => LayoutBuilder(builder: (context, constraints) {
                  if (constraints.maxWidth > 800) {
                    return LandingPageWeb();
                  } else
                    return LandingPageMobile();
                }));
      case '/Contact':
        return MaterialPageRoute(
          builder: (_) => LayoutBuilder(builder: (context, constraints) {
            if (constraints.maxWidth > 800) {
              return ContactWeb();
            } else
              return ContactMobile();
          }),
          settings: settings,
        );
      case '/About':
        return MaterialPageRoute(
          builder: (_) => LayoutBuilder(builder: (context, constraints) {
            if (constraints.maxWidth > 800) {
              return AboutWeb();
            } else
              return AboutMobile();
          }),
          settings: settings,
        );
      case '/Blog':
        return MaterialPageRoute(
          builder: (_) => LayoutBuilder(builder: (context, constraints) {
            if (constraints.maxWidth > 800) {
              return BlogWeb();
            } else
              return BlogMobile();
          }),
          settings: settings,
        );
      case '/Works':
        return MaterialPageRoute(
          builder: (_) => LayoutBuilder(builder: (context, constraints) {
            if (constraints.maxWidth > 800) {
              return WorksWeb();
            } else
              return WorksMobile();
          }),
          settings: settings,
        );
      default:
        return MaterialPageRoute(
            settings: settings,
            builder: (_) => LayoutBuilder(builder: (context, constraints) {
                  if (constraints.maxWidth > 800) {
                    return LandingPageWeb();
                  } else
                    return LandingPageMobile();
                }));
    }
  }
}
