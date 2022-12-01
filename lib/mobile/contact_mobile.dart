import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../components.dart';

class ContactMobile extends StatefulWidget {
  const ContactMobile({Key? key}) : super(key: key);

  @override
  State<ContactMobile> createState() => _ContactMobileState();
}

class _ContactMobileState extends State<ContactMobile> {
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
                    "images/contact_image.jpg",
                    fit: BoxFit.cover,
                    filterQuality: FilterQuality.high,
                  ),
                ),
              )
            ];
          },
          body: SingleChildScrollView(
            padding: EdgeInsets.symmetric(vertical: 25.0),
            child: Wrap(
              runSpacing: 20.0,
              spacing: 20.0,
              alignment: WrapAlignment.center,
              children: [
                SansBold("Contact me", 35.0),
                TextForms(
                    text: "First Name",
                    ContainerWidth: WidthDevice / 1.4,
                    hintText: "Enter your first name"),
                TextForms(
                    text: "Last Name",
                    ContainerWidth: WidthDevice / 1.4,
                    hintText: "Enter your first name"),
                TextForms(
                    text: "E-mail",
                    ContainerWidth: WidthDevice / 1.4,
                    hintText: "Enter your email address"),
                TextForms(
                    text: "Phone Number",
                    ContainerWidth: WidthDevice / 1.4,
                    hintText: "Enter your phone number"),
                TextForms(
                  text: "Message",
                  ContainerWidth: WidthDevice / 1.4,
                  hintText: "Message",
                  maxLine: 10.0,
                ),
                MaterialButton(
                  onPressed: () {},
                  elevation: 20.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  height: 60.0,
                  minWidth: WidthDevice / 2.2,
                  color: Colors.tealAccent,
                  child: SansBold("Sumbit", 20.0),
                ),
              ],
            ),
          ),
        ));
  }
}
