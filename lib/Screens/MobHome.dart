import 'package:flutter/material.dart';
import 'package:portfolio/Custom_widgets/text.dart';
import 'package:portfolio/Services/Mobweb/MobAbout.dart';
import 'package:portfolio/Services/Mobweb/MobContact.dart';
import 'package:portfolio/Services/Mobweb/MobExperience.dart';
import 'package:portfolio/Services/Mobweb/MobProfile.dart';
import 'package:portfolio/Services/Mobweb/MobSkill.dart';
import 'package:portfolio/Services/Mobweb/MobWork.dart';

class MobHomePage extends StatefulWidget {
  const MobHomePage({super.key});

  @override
  State<MobHomePage> createState() => _MobHomePageState();
}

class _MobHomePageState extends State<MobHomePage> {
  @override
  Widget build(BuildContext context) {
    bool isLoading = false;
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final text2 = (height + width) / 70;
    final text3 = (height + width) / 170;
    final GlobalKey _home = GlobalKey();
    final GlobalKey _about = GlobalKey();
    final GlobalKey _experience = GlobalKey();
    final GlobalKey _skill = GlobalKey();
    final GlobalKey _work = GlobalKey();
    final GlobalKey _contact = GlobalKey();
    final GlobalKey _gototop = GlobalKey();
    void _homescroll() {
      Scrollable.ensureVisible(_home.currentContext!,
          duration: Duration(seconds: 1), curve: Curves.easeInOut);
    }

    void _aboutscroll() {
      Scrollable.ensureVisible(_about.currentContext!,
          duration: Duration(seconds: 1), curve: Curves.easeInOut);
    }

    void _exeperiencescroll() {
      Scrollable.ensureVisible(_experience.currentContext!,
          duration: Duration(seconds: 1), curve: Curves.easeInOut);
    }

    void _skillscroll() {
      Scrollable.ensureVisible(_skill.currentContext!,
          duration: Duration(seconds: 1), curve: Curves.easeInOut);
    }

    void _workscroll() {
      Scrollable.ensureVisible(_work.currentContext!,
          duration: Duration(seconds: 1), curve: Curves.easeInOut);
    }

    void _contactscroll() {
      Scrollable.ensureVisible(_contact.currentContext!,
          duration: Duration(seconds: 1), curve: Curves.easeInOut);
    }

    void _topscroll() {
      Scrollable.ensureVisible(_gototop.currentContext!,
          duration: Duration(seconds: 1), curve: Curves.easeInOut);
    }

    return SelectionArea(
      child: Scaffold(
        drawer: Drawer(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                DrawerHeader(
                    child: Column(
                  children: [
                    Roboto(
                        text: "S.MATHIYARASAN",
                        size: text2,
                        color: Colors.black,
                        weight: FontWeight.w500),
                    SizedBox(
                      height: height / 50,
                    ),
                    Roboto(
                        text: "FLUTTER DEVELOPER",
                        size: text2,
                        color: Colors.black,
                        weight: FontWeight.w500),
                  ],
                )),
                ListTile(
                  leading: Icon(Icons.home, color: Colors.black),
                  title: Text('Home', style: TextStyle(color: Colors.black)),
                  onTap: () {
                    _homescroll();
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.home, color: Colors.black),
                  title: Text('About', style: TextStyle(color: Colors.black)),
                  onTap: () {
                    _aboutscroll();
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.home, color: Colors.black),
                  title:
                      Text('Experience', style: TextStyle(color: Colors.black)),
                  onTap: () {
                   _exeperiencescroll();
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.home, color: Colors.black),
                  title: Text('Skill', style: TextStyle(color: Colors.black)),
                  onTap: () {
                   _skillscroll();
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.home, color: Colors.black),
                  title: Text('Work', style: TextStyle(color: Colors.black)),
                  onTap: () {
                 _workscroll();
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.home, color: Colors.black),
                  title: Text('Contact', style: TextStyle(color: Colors.black)),
                  onTap: () {
                    _contactscroll();
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _topscroll,
          child: Icon(Icons.arrow_upward),
        ),
        appBar: AppBar(
          backgroundColor: Color(0xff252525),
          leading: Builder(
            builder: (context) => IconButton(
              icon: Icon(Icons.menu_rounded, color: Colors.white),
              onPressed: () {
                Scaffold.of(context).openDrawer(); // Open the drawer
              },
            ),
          ),
          actions: [
            SizedBox(
              width: width / 2.5,
              child: Center(
                child: Roboto(
                    text: "S MATHIYARASAN",
                    size: text2,
                    color: Colors.white,
                    weight: FontWeight.w500),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            height: height / 1,
            width: width / 1,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/bg.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    key: _home,
                  ),
                  SizedBox(
                    key: _gototop,
                    height: height / 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 70),
                    child: Column(
                      children: [MobProfile()],
                    ),
                  ),
                  Container(
      
                    color: Colors.white,
                    child: Column(
                      children: [
                        SizedBox(
                          key: _about,
                          height: height / 40,
                        ),
                        MobAbout(),
                        SizedBox(
                          key: _experience,
                        ),
      
                        SizedBox(
                          height: height / 20,
                        ),
                        Montserrat(
                            text: "EXPERIENCE",
                            size: text2,
                            color: Colors.black,
                            weight: FontWeight.w600),
                        SizedBox(
                          height: height / 30,
                        ),
                        MobExperience(),
                        SizedBox(
                          key: _skill,
                          height: height / 20,
                        ),
                        Montserrat(
                            text: "SKILLS",
                            size: text2,
                            color: Colors.black,
                            weight: FontWeight.w600),
                        SizedBox(
                          height: height / 30,
                        ),
                        MobSkill(),
                        SizedBox(
                          key: _work,
                          height: height / 20,
                        ),
                        Montserrat(
                            text: "WORKS",
                            size: text2,
                            color: Colors.black,
                            weight: FontWeight.w600),
                        SizedBox(
                          height: height / 20,
                        ),
                        MobWork(),
                        SizedBox(
                          key: _contact,
                          height: height / 20,
                        ),
                        Montserrat(
                            text: "CONTACT",
                            size: text2,
                            color: Colors.black,
                            weight: FontWeight.w600),
                        SizedBox(
                          height: height / 20,
                        ),
                        MobContact(),
                        SizedBox(
                          height: height / 20,
                        ),
                        Container(
                          height: height / 10,
                          width: width / 1,
                          color: Colors.black,
                          child: Column(
                            children: [
                              SizedBox(
                                height: height / 50,
                              ),
                              Center(
                                child: Montserrat(
                                    text: "S Mathiyarasan",
                                    size: text3,
                                    color: Colors.white,
                                    weight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: height / 100,
                              ),
                              Center(
                                child: Montserrat(
                                    text: "mathiyarasans2001@gmail.com",
                                    size: text3,
                                    color: Colors.white,
                                    weight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
