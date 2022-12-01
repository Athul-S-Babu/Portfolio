import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../components.dart';

class AboutMobile extends StatefulWidget {
  const AboutMobile({Key? key}) : super(key: key);

  @override
  State<AboutMobile> createState() => _AboutMobileState();
}

class _AboutMobileState extends State<AboutMobile> {

  tealContainer(String text) {
    return Container(
        decoration: BoxDecoration(
            border: Border.all(
                color: Colors.tealAccent, style: BorderStyle.solid, width: 2.0),
            borderRadius: BorderRadius.circular(5.0)),
        padding: EdgeInsets.all(7.0),
        child: Text(text, style: GoogleFonts.openSans(fontSize: 15.0)));
  }

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
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(size: 35.0, color: Colors.black),
      ),
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
                child: Image.asset(
                  'images/ath_circle.png',
                  filterQuality: FilterQuality.high,
                ),
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
                launchUrl("images/insta.svg", "http://www.instagram.com/athul_sb"),
                launchUrl("images/twitter.svg", "http://www.twitter.com/elonmusk"),
                launchUrl("images/github.svg", "http://www.github.com/Athul-S-Babu"),
              ],
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView(children: [
          CircleAvatar(
              backgroundColor: Colors.tealAccent,
              radius: 117.0,
              child: CircleAvatar(
                radius: 113.0,
                backgroundColor: Colors.black,
                child: CircleAvatar(
                  radius: 110.0,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage("images/ath_circle.png"),
                ),
              )),
          SizedBox(
            height: 20.0,
          ),
          SizedBox(
            height: 40,
          ),
          //Web Development,Second Section
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AnimatedCard(
                imagePath: ("images/webL.png"),
                width: 200.0,
              ),
              SizedBox(
                height: 30.0,
              ),
              SansBold("Web Development", 20.0),
              SizedBox(
                height: 10.0,
              ),
            ],
          ),
          Sans(
              "I'm here to build your presence online with state of art Web Apps.",
              15.0),

          //App Development,Third Section
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AnimatedCard(
                imagePath: ("images/app.png"),
                width: 200.0,
                reverse: true,
              ),
              SizedBox(
                height: 30.0,
              ),
              SansBold("App Development", 20.0),
              SizedBox(
                height: 10.0,
              ),
            ],
          ),
          Sans(
            "Do you need a high performance responsive and beautiful? "
            "Don't worry I;v got you covered.",
            15.0,
          ),
          //Back-end Development , Fourth Section
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AnimatedCard(
                imagePath: ("images/firebase.png"),
                width: 200.0,
                reverse: true,
              ),
              SizedBox(
                height: 30.0,
              ),
              SansBold("Back-end Development", 20.0),
              SizedBox(
                height: 10.0,
              ),
            ],
          ),
          Sans(
              "Do you want your Back-end to be highly scalable and secure ? "
              "Lets have a conversation on how I can help you with that.",
              15.0),
          SizedBox(
            height: 20.0,
          )
        ]),
      ),
    ));
  }
}
