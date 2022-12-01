import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../components.dart';

class WorksMobile extends StatefulWidget {
  const WorksMobile({Key? key}) : super(key: key);

  @override
  State<WorksMobile> createState() => _WorksMobileState();
}

class _WorksMobileState extends State<WorksMobile> {
  @override
  Widget build(BuildContext context) {
    launchUrl(String path, String Url) {
      return IconButton(
          icon: SvgPicture.asset(path),
          onPressed: () async {
            await launch(Url);
          });
    }

    return SafeArea(
        child: Scaffold(
            extendBodyBehindAppBar: true,
            backgroundColor: Colors.white,
            endDrawer: Drawer(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DrawerHeader(
                    padding: EdgeInsets.only(bottom: 20.0),
                    child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 2.0, color: Colors.black)),
                      child: Image.asset('images/ath_circle.png'),
                    ),
                  ),
                  TabsMobile(text: "Home", route: "/"),
                  SizedBox(height: 20.0),
                  TabsMobile(text: "Works", route: "/Works"),
                  SizedBox(height: 20.0),
                  TabsMobile(text: "Blog", route: "/Blog"),
                  SizedBox(height: 20.0),
                  TabsMobile(text: "About", route: "/About"),
                  SizedBox(height: 20.0),
                  TabsMobile(text: "Contact", route: "/Contact"),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      launchUrl(
                          "images/insta.svg", "http://www.instagram.com/athul_sb"),
                      launchUrl(
                          "images/twitter.svg", "http://www.twitter.com/elonmusk"),
                      launchUrl(
                          "images/github.svg", "http://www.github.com/Athul-S-Babu"),
                    ],
                  )
                ],
              ),
            ),
            body: NestedScrollView(
                headerSliverBuilder: (BuildContext, bool innerBoxIsScrolled) {
                  return <Widget>[
                    SliverAppBar(
                      expandedHeight: 400.0,
                      iconTheme: IconThemeData(size: 35.0, color: Colors.black),
                      flexibleSpace: FlexibleSpaceBar(
                        background: Image.asset(
                          "images/pixel.jpg",
                          fit: BoxFit.cover,
                          filterQuality: FilterQuality.high,
                        ),
                      ),
                    )
                  ];
                },
                body: ListView(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 20.0,
                        ),
                        SansBold("Works", 35.0),
                        SizedBox(
                          height: 20.0,
                        ),
                        AnimatedCard(
                          imagePath: "images/screenshot.jpeg",
                          fit: BoxFit.contain,
                          height: 150.0,
                          width: 300.0,
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        SansBold("Portfolio", 20.0),
                        SizedBox(
                          height: 10.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: SansBold(
                              "Deployed on Android,Ios,and Web,the portfolio "
                              "project was truly an achievement."
                              "I used Flutter to develop the beautiful and "
                              "responsive UI and Firebase for the Back-end ",
                              15.0),
                        )
                      ],
                    )
                  ],
                ))));
  }
}
