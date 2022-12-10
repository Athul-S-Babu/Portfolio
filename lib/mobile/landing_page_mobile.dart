import 'package:athul_s_babu/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logger/logger.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPageMobile extends StatefulWidget {
  const LandingPageMobile({Key? key}) : super(key: key);

  @override
  State<LandingPageMobile> createState() => _LandingPageMobileState();
}

class _LandingPageMobileState extends State<LandingPageMobile> {
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

    var logger = Logger();
    final TextEditingController _firstNameController = TextEditingController();
    final TextEditingController _lastNameController = TextEditingController();
    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _phoneController = TextEditingController();
    final TextEditingController _messageController = TextEditingController();
    final formKey = GlobalKey<FormState>();

    var widthDevice = MediaQuery.of(context).size.width;
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
                  launchUrl("images/github.svg",
                      "http://www.github.com/Athul-S-Babu"),
                ],
              )
            ],
          ),
        ),
        body: ListView(
          children: [
            //Intro First Section
            CircleAvatar(
              radius: 117.0,
              backgroundColor: Colors.tealAccent,
              child: CircleAvatar(
                radius: 113.0,
                backgroundColor: Colors.black,
                child: CircleAvatar(
                    radius: 110.0,
                    backgroundColor: Colors.white,
                    backgroundImage: (AssetImage("images/asb3.png"))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 25.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.tealAccent,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              topRight: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0),
                            ),
                          ),
                          padding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                          child: SansBold("Hello I'm", 15.0),
                        ),
                        SansBold("Athul S Babu", 40.0),
                        SansBold("Flutter Developer", 20.0),
                      ],
                    ),
                    SizedBox(height: 15.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Wrap(
                          direction: Axis.vertical,
                          spacing: 3.0,
                          children: [
                            Icon(Icons.email_sharp),
                            Icon(Icons.call_sharp),
                            Icon(Icons.location_pin),
                          ],
                        ),
                        SizedBox(width: 40.0),
                        Wrap(
                          spacing: 9.0,
                          direction: Axis.vertical,
                          children: [
                            Sans("athulsbabu3168@gmail.com", 15.0),
                            Sans("+918089313168", 15.0),
                            Sans("Avani,Kerala, India", 15.0),
                          ],
                        )
                      ],
                    )
                  ]),
            ),
            SizedBox(height: 90.0),
            //About me,Second Section
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SansBold("About me", 35.0),
                    Sans("Hello! Iam Athul S Babu I specialised in Flutter",
                        15.0),
                    Sans(
                        "I strive to ensure astounding performance with a sate of",
                        15.0),
                    Sans(
                        "the art security for Android ,Ios,Web,Mac,Linux & Windows",
                        15.0),
                    SizedBox(height: 10.0),
                    Wrap(
                      spacing: 7.0,
                      runSpacing: 7.0,
                      children: [
                        tealContainer("Flutter"),
                        tealContainer("Firebase"),
                        tealContainer("Android"),
                        tealContainer("Ios"),
                        tealContainer("Windows"),
                      ],
                    ),
                  ]),
            ),
            SizedBox(
              height: 60.0,
            ),
            //Third Section What I Do?
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SansBold("What I Do", 35.0),
                AnimatedCard(
                  imagePath: "images/webL.png",
                  text: "Web development",
                  width: 300.0,
                ),
                SizedBox(
                  height: 35.0,
                ),
                AnimatedCard(
                  imagePath: "images/app.png",
                  text: "App development",
                  fit: BoxFit.contain,
                  reverse: true,
                  width: 300.0,
                ),
                SizedBox(
                  height: 35.0,
                ),
                AnimatedCard(
                  imagePath: "images/firebase.png",
                  text: "Back-end development",
                  fit: BoxFit.contain,
                  reverse: true,
                  width: 300.0,
                ),
                SizedBox(
                  height: 35.0,
                ), //Contact Section Fourth
                Form(
                  key: formKey,
                  child: Wrap(
                    spacing: 20.0,
                    runSpacing: 20.0,
                    alignment: WrapAlignment.center,
                    children: [
                      SansBold("Contact me", 35.0),
                      TextForms(
                        text: "First Name",
                        ContainerWidth: widthDevice / 1.4,
                        hintText: "Please type your first name",
                        controller: _firstNameController,
                        validator: (text) {
                          if (text.toString().isEmpty) {
                            return "First name is required";
                          }
                        },
                      ),
                      TextForms(
                        text: "Last Name",
                        ContainerWidth: widthDevice / 1.4,
                        hintText: "Please type your last name",
                        controller: _lastNameController,
                        validator: (text) {
                          if (text.toString().isEmpty) {
                            return "Last name is required";
                          }
                        },
                      ),
                      TextForms(
                        text: "Email",
                        ContainerWidth: widthDevice / 1.4,
                        hintText: "Please type your Email address",
                        controller: _emailController,
                        validator: (text) {
                          if (text.toString().isEmpty) {
                            return "Email is required";
                          }
                        },
                      ),
                      TextForms(
                        text: "Phone Number",
                        ContainerWidth: widthDevice / 1.4,
                        hintText: "Please type your Phone Number",
                        controller: _phoneController,
                        validator: (text) {
                          if (text.toString().isEmpty) {
                            return "Phone number is required";
                          }
                        },
                      ),
                      TextForms(
                        text: "Message",
                        ContainerWidth: widthDevice / 1.4,
                        hintText: "Message",
                        maxLine: 10,
                        controller: _messageController,
                        validator: (text) {
                          if (text.toString().isEmpty) {
                            return "Message is required";
                          }
                        },
                      ),
                      MaterialButton(
                          elevation: 20.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          height: 60.0,
                          minWidth: widthDevice / 2.2,
                          color: Colors.tealAccent,
                          child: SansBold("Submit", 20.0),
                          onPressed: () async {
                            logger.d(_firstNameController.text);
                            final addData = new AddDataFirestore();
                            if (formKey.currentState!.validate()) {
                              if (await addData.addResponse(
                                  _firstNameController.text,
                                  _lastNameController.text,
                                  _emailController.text,
                                  _phoneController.text,
                                  _messageController.text)) {
                                formKey.currentState!.reset();
                                DialogError(
                                    context, "Message send successfully");
                              }
                              else {
                                DialogError(context, "Message failed to send");
                              }
                            }
                          }),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
