import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../components.dart';

class WorksWeb extends StatefulWidget {
  const WorksWeb({Key? key}) : super(key: key);

  @override
  State<WorksWeb> createState() => _WorksWebState();
}

class _WorksWebState extends State<WorksWeb> {
  @override
  Widget build(BuildContext context) {
    launchUrl(String path, String Url) {
      return IconButton(
          icon: SvgPicture.asset(path),
          onPressed: () async {
            await launch(Url);
          });
    }

    var WidthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 72.0,
                backgroundColor: Colors.tealAccent,
                child: CircleAvatar(
                  radius: 70.0,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage("images/asb3.png"),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              SansBold("Athul S Babu", 15.0),
              SizedBox(
                height: 15.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  launchUrl(
                      "images/insta.svg", "http://www.instagram.com/athul_sb"),
                  launchUrl(
                      "images/twitter.svg", "http://www.twitter.com/elonmusk"),
                  launchUrl("images/github.svg",
                      "http://www.github.com/Athul-S-Babu"),
                ],
              )
            ],
          ),
        ),
        backgroundColor: Colors.white,
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 500.0,
                backgroundColor: Colors.white,
                iconTheme: IconThemeData(
                  size: 25.0,
                  color: Colors.black,
                ),
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                    "images/pixel.jpg",
                    fit: BoxFit.cover,
                    filterQuality: FilterQuality.high,
                  ),
                ),
                title: Row(
                  children: [
                    Spacer(flex: 3),
                    TabsWeb(
                      title: "Home",
                      route: "/",
                    ),
                    Spacer(),
                    TabsWeb(
                      title: "Works",
                      route: "/Works",
                    ),
                    Spacer(),
                    TabsWeb(
                      title: "Blog",
                      route: "/Blog",
                    ),
                    Spacer(),
                    TabsWeb(
                      title: "About",
                      route: "/About",
                    ),
                    Spacer(),
                    TabsWeb(
                      title: "Contact",
                      route: "/Contact",
                    ),
                    Spacer(),
                  ],
                ),
              )
            ];
          },
          body: ListView(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 30.0,
                  ),
                  SansBold("Works", 40.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      AnimatedCard(
                        imagePath: "images/screenshot.jpeg",
                        width: 300.0,
                        height: 200.0,
                      ),
                      SizedBox(
                        width: WidthDevice / 3,
                        child: Column(
                          children: [
                            SansBold("Portfolio", 40.0),
                            SizedBox(
                              height: 15.0,
                            ),
                            Sans(
                                "Deployed on Android,Ios,and Web,the portfolio "
                                "project was truly an achievement."
                                "I used Flutter to develop the beautiful and "
                                "responsive UI and Firebase for the Back-end ",
                                15.0)
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ));
  }
}
