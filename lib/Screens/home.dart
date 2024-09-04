import 'package:flutter/material.dart';
import 'package:portfolio/Custom_widgets/text.dart';
import 'package:portfolio/Services/Desktop/Skill.dart';
import 'package:portfolio/Services/Desktop/about.dart';
import 'package:portfolio/Services/Desktop/contact.dart';
import 'package:portfolio/Services/Desktop/experience.dart';
import 'package:portfolio/Services/Desktop/profile.dart';
import 'package:portfolio/Services/Desktop/work.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late ScrollController _scrollController;
  bool _isHomeScrolled = false;
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
        floatingActionButton: FloatingActionButton(
          onPressed: _topscroll,
          child: Icon(Icons.arrow_upward),
        ),
        appBar: AppBar(
          backgroundColor: Color(0xff252525),
          title: Roboto(
              text: "    MATHIYARASAN S",
              size: text2,
              color: Colors.white,
              weight: FontWeight.w500),
          actions: [
            SizedBox(
              width: width / 2.5,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  HoverContainer(Text1: "Home", onpress: _homescroll),
                  HoverContainer(Text1: "About", onpress: _aboutscroll),
                  HoverContainer(
                      Text1: "Experience", onpress: _exeperiencescroll),
                  HoverContainer(Text1: "Skill", onpress: _skillscroll),
                  HoverContainer(Text1: "Work", onpress: _workscroll),
                  HoverContainer(Text1: "Contact", onpress: _contactscroll),
                  SizedBox(
                    width: width / 20,
                  )
                ],
              ),
            )
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
                      children: [Profile()],
                    ),
                  ),
                  Container(
                    // height: height,
                    // width: width,
                    color: Colors.white,
                    child: Column(
                      children: [
                        SizedBox(
                          key: _about,
                          height: height / 30,
                        ),
                        About(),
                        SizedBox(
                          key: _experience,
                        ),
                        SizedBox(
                          height: height / 15,
                        ),
                        Montserrat(
                            text: "EXPERIENCE",
                            size: text2,
                            color: Colors.black,
                            weight: FontWeight.w600),
                        SizedBox(
                          height: height / 30,
                        ),
                        Experience(),
                        SizedBox(
                          key: _skill,
                          height: height / 10,
                        ),
                        Montserrat(
                            text: "SKILLS",
                            size: text2,
                            color: Colors.black,
                            weight: FontWeight.w600),
                        SizedBox(
                          height: height / 10,
                        ),
                        Skill(),
                        SizedBox(
                          key: _work,
                          height: height / 7,
                        ),
                        Montserrat(
                            text: "WORKS",
                            size: text2,
                            color: Colors.black,
                            weight: FontWeight.w600),
                        SizedBox(
                          height: height / 10,
                        ),
                        Work(),
                        SizedBox(
                          key: _contact,
                          height: height / 7,
                        ),
                        Montserrat(
                            text: "CONTACT",
                            size: text2,
                            color: Colors.black,
                            weight: FontWeight.w600),
                        SizedBox(
                          height: height / 10,
                        ),
                        Contact(),
                        SizedBox(
                          height: height / 7,
                        ),
                        Container(
                          height: height / 2,
                          width: width / 1,
                          color: Colors.black,
                        ),
                        Container(
                          height: height / 10,
                          width: width / 1,
                          color: Colors.black,
                          child: Center(
                            child: Montserrat(
                                text: "mathiyarasans2001@gmail.com",
                                size: text3,
                                color: Colors.white,
                                weight: FontWeight.w600),
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

class HoverContainer extends StatefulWidget {
  final String Text1;
  final VoidCallback onpress;
  const HoverContainer({
    super.key,
    required this.Text1,
    required this.onpress,
  });

  @override
  _HoverContainerState createState() => _HoverContainerState();
}

class _HoverContainerState extends State<HoverContainer> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    final text1Size = (height + width) / 180;

    return MouseRegion(
        onEnter: (_) => setState(() {
              _isHovered = true;
            }),
        onExit: (_) => setState(() {
              _isHovered = false;
            }),
        child: AnimatedContainer(
          duration: Duration(milliseconds: 300),
          height: height / 3,
          width: width / 20,
          child: InkWell(
              onTap: widget.onpress,
              child: _isHovered
                  ? Container(
                      color: Colors.red,
                      child: Center(
                        child: Montserrat(
                            text: widget.Text1,
                            size: text1Size,
                            color: Colors.black,
                            weight: FontWeight.w500),
                      ))
                  : Center(
                      child: Montserrat(
                          text: widget.Text1,
                          size: text1Size,
                          color: Colors.white,
                          weight: FontWeight.w500),
                    )),
        ));
  }
}
// InkWell(
//   onTap: () => _homescroll(),
//   child: Center(
//     child: Montserrat(
//         text: "Home",
//         size: text3,
//         color: Colors.white,
//         weight: FontWeight.w500),
//   ),
// ),
// InkWell(
//   onTap: () => _aboutscroll(),
//   child: Center(
//     child: Montserrat(
//         text: "About",
//         size: text3,
//         color: Colors.white,
//         weight: FontWeight.w500),
//   ),
// ),
// InkWell(
//   onTap: () => _exeperiencescroll(),
//   child: Center(
//     child: Montserrat(
//         text: "Experience",
//         size: text3,
//         color: Colors.white,
//         weight: FontWeight.w500),
//   ),
// ),
// InkWell(
//   onTap: () => _skillscroll(),
//   child: Center(
//     child: Montserrat(
//         text: "Skill",
//         size: text3,
//         color: Colors.white,
//         weight: FontWeight.w500),
//   ),
// ),
// InkWell(
//   onTap: () => _workscroll(),
//   child: Center(
//     child: Montserrat(
//         text: "Work",
//         size: text3,
//         color: Colors.white,
//         weight: FontWeight.w500),
//   ),
// ),
// InkWell(
//   onTap: () => _contactscroll(),
//   child: Center(
//     child: Montserrat(
//         text: "Contact",
//         size: text3,
//         color: Colors.white,
//         weight: FontWeight.w500),
//   ),
// ),
// Container(
//   height: height / 10,
//   width: width / 1,
//   decoration: BoxDecoration(
//     color: Color(0xff252525),
//   ),
//   child: Row(
//     crossAxisAlignment: CrossAxisAlignment.center,
//     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//     children: [
//       Roboto(
//           text: "    MATHIYARASAN S",
//           size: text2,
//           color: Colors.white,
//           weight: FontWeight.w500),
//       SizedBox(
//         width: width / 2,
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             Montserrat(
//                 text: "Home",
//                 size: text3,
//                 color: Colors.white,
//                 weight: FontWeight.w500),
//             Montserrat(
//                 text: "About",
//                 size: text3,
//                 color: Colors.white,
//                 weight: FontWeight.w500),
//             Montserrat(
//                 text: "Experience",
//                 size: text3,
//                 color: Colors.white,
//                 weight: FontWeight.w500),
//             Montserrat(
//                 text: "Skill",
//                 size: text3,
//                 color: Colors.white,
//                 weight: FontWeight.w500),
//             Montserrat(
//                 text: "Work",
//                 size: text3,
//                 color: Colors.white,
//                 weight: FontWeight.w500),
//             Montserrat(
//                 text: "Contact",
//                 size: text3,
//                 color: Colors.white,
//                 weight: FontWeight.w500),
//           ],
//         ),
//       )
//     ],
//   ),
// ),
