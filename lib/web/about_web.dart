//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import '../components.dart';

class AboutWeb extends StatefulWidget {
  const AboutWeb({Key? key}) : super(key: key);

  @override
  State<AboutWeb> createState() => _AboutWebState();
}

class _AboutWebState extends State<AboutWeb> {
  @override
  Widget build(BuildContext context) {
    launchUrl(String path, String Url) {
      return IconButton(
          icon: SvgPicture.asset(path),
          onPressed: () async {
            await launch(Url);
          });
    }

    tealContainer(String text) {
      return Container(
          decoration: BoxDecoration(
              border: Border.all(
                  color: Colors.tealAccent,
                  style: BorderStyle.solid,
                  width: 2.0),
              borderRadius: BorderRadius.circular(5.0)),
          padding: EdgeInsets.all(7.0),
          child: Text(text, style: GoogleFonts.openSans(fontSize: 15.0)));
    }

    var widthDevice = MediaQuery.of(context).size.width;
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
              SizedBox(height: 15.0),
              SansBold("Athul S Babu", 30.0),
              SizedBox(height: 15.0),
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
        appBar: AppBar(
            iconTheme: IconThemeData(size: 23.0, color: Colors.black),
            backgroundColor: Colors.white,
            title: Row(
              children: [
                Spacer(flex: 3),
                TabsWeb(title: "Home", route: '/'),
                Spacer(),
                TabsWeb(title: "Works", route: '/Works'),
                Spacer(),
                TabsWeb(title: "Blog", route: '/Blog'),
                Spacer(),
                TabsWeb(title: "About", route: '/About'),
                Spacer(),
                TabsWeb(title: "Contact", route: '/Contact'),
              ],
            )),
        body: ListView(
          children: [
            //About me, First Section
            SizedBox(
              height: 500.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SansBold("About me", 40.0),
                      SizedBox(
                        height: 15.0,
                      ),
                      Sans("Hello! Iam Athul S Babu I specilised in Flutter.",
                          15.0),
                      Sans(
                          "I strive to ensure astounding performance with a sate of",
                          15.0),
                      Sans(
                          "the art security for Android ,Ios,Web,Mac,Linux & Windows.",
                          15.0),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        children: [
                          tealContainer("Flutter"),
                          SizedBox(
                            width: 7.0,
                          ),
                          tealContainer("Firebase"),
                          SizedBox(
                            width: 7.0,
                          ),
                          tealContainer("Android"),
                          SizedBox(
                            width: 7.0,
                          ),
                          tealContainer("Ios"),
                          SizedBox(
                            width: 7.0,
                          ),
                          tealContainer("Windows"),
                        ],
                      )
                    ],
                  ),
                  CircleAvatar(
                    radius: 147.0,
                    backgroundColor: Colors.tealAccent,
                    child: CircleAvatar(
                      radius: 143.0,
                      backgroundColor: Colors.black,
                      child: CircleAvatar(
                        radius: 140.0,
                        backgroundColor: Colors.white,
                        child: Image.asset(
                          'images/ath_circle.png',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //Web development,Second Section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AnimatedCard(
                  imagePath: "images/webL.png",
                  width: 250.0,
                  height: 250.0,
                  //text: "Web Development",
                ),
                SizedBox(
                    width: widthDevice / 3,
                    child: Column(
                      children: [
                        SansBold("Web Development", 30.0),
                        SizedBox(
                          height: 15.0,
                        ),
                        Sans(
                            "I'm here to buld your presence online with the state of the art Web Apps.",
                            15.0)
                      ],
                    )),
              ],
            ),
            SizedBox(
              width: 20.0,
            ),
            //Web Development, Third Section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                    width: widthDevice / 3,
                    child: Column(
                      children: [
                        SansBold("App Development", 30.0),
                        SizedBox(
                          height: 15.0,
                        ),
                        Sans(
                            "Do you need a high performance ,responsive and beautiful Apps?."
                            "Don't worry I've got you covered",
                            15.0),
                      ],
                    )),
                AnimatedCard(
                  imagePath: "images/app.png",
                  width: 250.0,
                  height: 250.0,
                  reverse: true,
                )
              ],
            ),
            SizedBox(
              height: 20.0,
            ),

            //Back-end Development ,Second section

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AnimatedCard(
                  imagePath: "images/firebase.png",
                  width: 250.0,
                  height: 250.0,
                  reverse: true,
                ),
                SizedBox(
                    width: widthDevice / 3,
                    child: Column(
                      children: [
                        SansBold("Back-end Development", 30.0),
                        SizedBox(
                          height: 15.0,
                        ),
                        Sans(
                            "Do you want your Back-end to be highly scalable and"
                            "secure? Let's have a conversation on how can"
                            "  help you .",
                            15.0)
                      ],
                    )),
              ],
            ),
            SizedBox(
              height: 20.0,
            )
          ],
        ));
  }
}
