//import 'dart:html';

import 'package:athul_s_babu/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:logger/logger.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPageWeb extends StatefulWidget {
  const LandingPageWeb({Key? key}) : super(key: key);

  @override
  State<LandingPageWeb> createState() => _LandingPageWebState();
}

class _LandingPageWebState extends State<LandingPageWeb> {
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

  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;
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
                    "images/twitter.svg", "http://www.twitter.com/athul_sb"),
                launchUrl(
                    "images/github.svg", "http://www.github.com/athul_sb"),
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
          //FirsSection
          Container(
            height: heightDevice - 56.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.tealAccent,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              topRight: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0),
                            )),
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        child: SansBold("Hello I'm", 15.0)),
                    SizedBox(height: 15.0),
                    SansBold("Athul S Babu", 55.0),
                    Sans("Fluttter Developer", 30.0),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      children: [
                        Icon(Icons.email_sharp),
                        SizedBox(
                          width: 20.0,
                        ),
                        Sans("athulsbabu3168@gmail.com", 15.0)
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: [
                        Icon(Icons.call_sharp),
                        SizedBox(
                          width: 20,
                        ),
                        Sans("+918089313168", 15.0)
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: [
                        Icon(Icons.location_pin),
                        SizedBox(
                          width: 20.0,
                        ),
                        Sans("Avani,Kerala,India", 15.0),
                      ],
                    ),
                    SizedBox(
                      height: 3.0,
                    ),
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
                      backgroundImage: AssetImage('images/asb3.png'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          //SecondSection
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "images/web.jpg",
                  height: heightDevice / 1.7,
                ),
                Container(
                  height: widthDevice / 1.9,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SansBold("About me", 40.0),
                      SizedBox(height: 15.0),
                      Sans("Hello! Iam Athul S Babu I specilised in Flutter",
                          15.0),
                      Sans(
                          "I strive to ensure astounding performance with a sate of",
                          15.0),
                      Sans(
                          "the art security for Android ,Ios,Web,Mac,Linux & Windows",
                          15.0),
                      SizedBox(height: 10.0),
                      Row(
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.tealAccent,
                                      style: BorderStyle.solid,
                                      width: 2.0),
                                  borderRadius: BorderRadius.circular(5.0)),
                              padding: EdgeInsets.all(7.0),
                              child: Sans("Flutter", 15)),
                          SizedBox(width: 7.0),
                          Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.tealAccent,
                                      style: BorderStyle.solid,
                                      width: 2.0),
                                  borderRadius: BorderRadius.circular(5.0)),
                              padding: EdgeInsets.all(7.0),
                              child: Sans("Firebase", 15)),
                          SizedBox(width: 7.0),
                          Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.tealAccent,
                                      style: BorderStyle.solid,
                                      width: 2.0),
                                  borderRadius: BorderRadius.circular(5.0)),
                              padding: EdgeInsets.all(7.0),
                              child: Sans("Android", 15)),
                          SizedBox(width: 7.0),
                          Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.tealAccent,
                                      style: BorderStyle.solid,
                                      width: 2.0),
                                  borderRadius: BorderRadius.circular(5.0)),
                              padding: EdgeInsets.all(7.0),
                              child: Sans("Ios", 15)),
                          SizedBox(width: 7.0),
                          Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.tealAccent,
                                      style: BorderStyle.solid,
                                      width: 2.0),
                                  borderRadius: BorderRadius.circular(5.0)),
                              padding: EdgeInsets.all(7.0),
                              child: Sans("Windows", 15.0)),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          //ThirdSection
          Container(
              height: heightDevice / 1.3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SansBold("What I do?", 40.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      AnimatedCard(
                        imagePath: "images/webL.png",
                        text: "Web Development",
                      ),
                      AnimatedCard(
                        imagePath: "images/app.png",
                        text: "App Development",
                        fit: BoxFit.contain,
                        reverse: true,
                      ),

                      AnimatedCard(
                        imagePath: "images/firebase.png",
                        text: "Back-end Development",
                      ),
                      //Fourth Section
                    ],
                  )
                ],
              )),
          //FourthSection
          Container(
            height: heightDevice,
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SansBold("Contact me", 40.0),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            TextForms(
                              ContainerWidth: 350.0,
                              text: "First name",
                              hintText: "Please type your first name",
                              controller: _firstNameController,
                              validator: (text) {
                                if (text.toString().isEmpty) {
                                  return "First name is required";
                                }
                              },
                            ),
                            SizedBox(height: 15.0),
                            TextForms(
                              text: "Email",
                              ContainerWidth: 350.0,
                              hintText: "Please enter your Email address",
                              controller: _emailController,
                              validator: (text) {
                                if (text.toString().isEmpty) {
                                  return "email is required";
                                }
                              },
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            TextForms(
                              text: "Last name",
                              ContainerWidth: 350.0,
                              hintText: "Please type your last name",
                              controller: _lastNameController,
                              validator: (text) {
                                if (text.toString().isEmpty) {
                                  return "Last name is required";
                                }
                              },
                            ),
                            SizedBox(height: 15.0),
                            TextForms(
                              text: "Phone number",
                              ContainerWidth: 350.0,
                              hintText: "Please enter your Phone number",
                              controller: _phoneController,
                              validator: (text) {
                                if (text.toString().isEmpty) {
                                  return "Phone number is required";
                                }
                              },
                            ),
                          ],
                        )
                      ]),
                  TextForms(
                    text: "Message",
                    ContainerWidth: widthDevice / 1.5,
                    hintText: "Please enter your message",
                    maxLine: 10.0,
                    controller: _messageController,
                    validator: (text) {
                      if (text.toString().isEmpty) {
                        return "First name is required";
                      }
                    },
                  ),
                  MaterialButton(
                      elevation: 20.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      height: 60.0,
                      minWidth: 200.0,
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
          ),
          SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }
}
