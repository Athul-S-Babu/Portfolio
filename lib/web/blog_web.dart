import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../components.dart';

class BlogWeb extends StatefulWidget {
  const BlogWeb({Key? key}) : super(key: key);

  @override
  State<BlogWeb> createState() => _BlogWebState();
}

class _BlogWebState extends State<BlogWeb> {
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
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                backgroundColor: Colors.white,
                iconTheme: IconThemeData(size: 30.0, color: Colors.black),
                flexibleSpace: FlexibleSpaceBar(
                  title: Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(3.0)),
                    padding: EdgeInsets.symmetric(horizontal: 7.0),
                    child: AbelCustom(
                      text: "Welcome To My Blog",
                      size: 30.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  background: Image.asset("images/blog.jpg",
                      filterQuality: FilterQuality.high, fit: BoxFit.cover),
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
                expandedHeight: 500.0,
              ),
            ];
          },
          body: StreamBuilder<QuerySnapshot>(
            stream:
                FirebaseFirestore.instance.collection("articles").snapshots(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                    itemCount: snapshot.data!.docs.length,
                    itemBuilder: (BuildContext context, int index) {
                      DocumentSnapshot documentSnapshot =
                          snapshot.data!.docs[index];
                      return BlogPost(
                          title: documentSnapshot["title"],
                          body: documentSnapshot["body"]);
                    });
              } else
                return Center(
                  child: CircularProgressIndicator(),
                );
            },
          ),
        ),
      ),
    );
  }
}

class BlogPost extends StatefulWidget {
  final title;
  final body;

  const BlogPost({Key? key, @required this.title, @required this.body})
      : super(key: key);

  @override
  State<BlogPost> createState() => _BlogPostState();
}

class _BlogPostState extends State<BlogPost> {
  bool expanded = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 70.0,
        right: 70.0,
        top: 40.0,
      ),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            border: Border.all(
                style: BorderStyle.solid, width: 1.0, color: Colors.black)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(3.0)),
                  child: AbelCustom(
                    text: widget.title.toString(),
                    color: Colors.white,
                    size: 25.0,
                  ),
                ),
                IconButton(
                    onPressed: () {
                      setState(() {
                        expanded = !expanded;
                      });
                    },
                    icon: Icon(
                      Icons.arrow_drop_down_outlined,
                      color: Colors.black,
                    )),
              ],
            ),
            SizedBox(
              height: 7.0,
            ),
            Text(
              widget.body.toString(),
              style: GoogleFonts.openSans(fontSize: 15.0),
              maxLines: expanded == true ? null : 3,
              overflow: expanded == true
                  ? TextOverflow.visible
                  : TextOverflow.ellipsis,
            )
          ],
        ),
      ),
    );
  }
}
