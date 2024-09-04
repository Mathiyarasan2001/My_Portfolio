import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:portfolio/Custom_widgets/text.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final text1 = (height + width) / 50;
    final text2 = (height + width) / 70;
    return SelectionArea(
      child: Container(
        height: height / 1.1,
        width: width / 1,
        color: Colors.transparent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Montserrat(
                text: "HEY! I AM S.MATHIYARASAN",
                size: text1,
                color: Colors.black,
                weight: FontWeight.w700),
            Roboto(
                text: "FLUTTER DEVELOPER",
                size: text2,
                color: Colors.brown,
                weight: FontWeight.w600)
          ],
        )
            .animate()
            .fadeIn(duration: 2.seconds)
            .move(begin: Offset(1, 0), end: Offset(0, 0)),
      ),
    );
  }
}
