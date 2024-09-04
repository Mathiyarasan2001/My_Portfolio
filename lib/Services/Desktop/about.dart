import 'package:flutter/material.dart';
import 'package:portfolio/Custom_widgets/text.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    final text4 = (height + width) / 110;
    final text5 = (height + width) / 160;

    return SizedBox(
      height: height / 1.1,
      width: width / 1,
      child: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
                height: height / 2.5,
                width: width / 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Poppins(
                        text:
                            "This is Mathiyarasan, a Creative Developer of Applications and Websites.",
                        size: text4,
                        color: Colors.black,
                        weight: FontWeight.w400),
                    Montserrat(
                        text:
                            "A Flutter developer who brings ideas to life in cool and creative ways. Inspired by technology's power, I view it as a valuable gift for innovation and growth. With a focus on Flutter, Firebase, and REST APIs, I’m passionate about crafting interactive and engaging mobile apps and websites. Let’s create something amazing together!",
                        size: text5,
                        color: Colors.black,
                        weight: FontWeight.w500),
                    Montserrat(
                        text:
                            "Interest in Flutter, eager to contribute to innovative mobile app projects, and continuously expanding my skill set to create dynamic and user-friendly applications.",
                        size: text5,
                        color: Colors.black,
                        weight: FontWeight.w500),
                    Montserrat(
                        text:
                            "A passionate Flutter Developer seeking an opportunity to utilize my skills in Flutter development, mobile app design, and provide quality solutions to the company.",
                        size: text5,
                        color: Colors.black,
                        weight: FontWeight.w500),
                  ],
                )),
            Container(
              height: height / 2.5,
              width: width / 2.5,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(50),
                      topLeft: Radius.circular(50)),
                  image: DecorationImage(
                      image: AssetImage("assets/2.jpg"), fit: BoxFit.cover)),
            )
          ],
        ),
      ),
    );
  }
}
