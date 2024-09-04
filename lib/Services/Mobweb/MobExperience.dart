import 'package:flutter/material.dart';
import 'package:portfolio/Custom_widgets/text.dart';

class MobExperience extends StatelessWidget {
  const MobExperience({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final text5 = (height + width) / 130;
    final text6 = (height + width) / 100;
    final text7 = (height + width) / 110;
    return Container(
      height: height / 2,
      width: width / 1.1,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 117, 155, 231),
          borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.only(right: 10, left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Poppins(
                text: "FLUTTER DEVELOPER INTERN",
                size: text6,
                color: Colors.white,
                weight: FontWeight.w500),
            Poppins(
                text: "SUNRULE DIGITAL SOLUTIONS, BANNGALORE",
                size: text6,
                color: Colors.white,
                weight: FontWeight.w400),
            Montserrat(
                text:
                "Studied user requirements to gain a strong understanding of project initiatives and deadlines.",
                size: text5,
                color: Colors.white,
                weight: FontWeight.w500),
            Montserrat(
                text:
                "Developed user interfaces using the Flutter framework, focusing on design and implementation to enhance user experience.",
                size: text5,
                color: Colors.white,
                weight: FontWeight.w500),
            Montserrat(
                text:
                "Collaborated with UI/UX designers to craft responsive and visually engaging applications.",
                size: text5,
                color: Colors.white,
                weight: FontWeight.w500),
            Montserrat(
                text:
                "Created custom widgets and animations to elevate user experience and improve functionality.",
                size: text5,
                color: Colors.white,
                weight: FontWeight.w500),
            Montserrat(
                text:
                "Utilized skills in Flutter development and API integration to contribute to innovative mobile projects, enhancing user experiences and driving technological advancements.",
                size: text5,
                color: Colors.white,
                weight: FontWeight.w500),
            FilledButton(
              style: FilledButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 131, 172, 255),
                  shape: ContinuousRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  fixedSize: Size(width / 3, height / 20)),
              onPressed: () {},
              child: Roboto(
                  text: "CERTIFICATE",
                  size: text7,
                  color: Colors.white,
                  weight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
