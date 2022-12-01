import 'package:athul_s_babu/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactWeb extends StatefulWidget {
  const ContactWeb({Key? key}) : super(key: key);

  @override
  State<ContactWeb> createState() => _ContactWebState();
}

class _ContactWebState extends State<ContactWeb> {
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
                  launchUrl(
                      "images/github.svg", "http://www.github.com/Athul-S-Babu"),
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
                    "images/contact_image.jpg",
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
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 30.0,
                ),
                SansBold("Contact me", 40.0),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        TextForms(
                            text: "First Name",
                            ContainerWidth: 350.0,
                            hintText: "Please type your first name"),
                        SizedBox(
                          height: 15.0,
                        ),
                        TextForms(
                            text: "Email",
                            ContainerWidth: 350.0,
                            hintText: "Please type your Email address"),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextForms(
                            text: "Last Name",
                            ContainerWidth: 350.0,
                            hintText: "Please type your last name"),
                        SizedBox(
                          height: 15.0,
                        ),
                        TextForms(
                            text: "Phone Number",
                            ContainerWidth: 350.0,
                            hintText: "Please type your Phone Number"),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.0,
                ),
                TextForms(
                  text: "Message",
                  ContainerWidth: WidthDevice / 1.5,
                  hintText: "Message",
                  maxLine: 10,
                ),
                SizedBox(
                  height: 20.0,
                ),
                MaterialButton(
                  onPressed: () {},
                  elevation: 20.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  height: 60.0,
                  minWidth: 200.0,
                  color: Colors.tealAccent,
                  child: SansBold("Sumbit", 20.0),
                ),
                SizedBox(
                  height: 10.0,
                ),
              ],
            ),
          ),
        ));
  }
}
