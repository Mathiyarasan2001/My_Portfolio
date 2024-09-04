import 'package:flutter/material.dart';
import 'package:portfolio/Custom_widgets/text.dart';

class MobContact extends StatelessWidget {
  const MobContact({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final ResponsiveRadius = (height + width) / 50;
    final text2 = (height + width) / 70;
    final text5 = (height + width) / 160;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          decoration: BoxDecoration(
            boxShadow: [BoxShadow(blurRadius: 10, color: Colors.grey)],
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          height: height / 5,
          width: width / 1.5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                radius: ResponsiveRadius,
                backgroundColor: Colors.black,
                child: Icon(
                  Icons.location_on,
                  size: 20,
                  color: Colors.red,
                ),
              ),
              Poppins(
                color: Colors.black,
                size: text2,
                text: "Address",
                weight: FontWeight.w500,
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Poppins(
                  color: Colors.black,
                  size: text5,
                  text: "INDIRA NAGAR SIVAGANGAI",
                  weight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: height/20,
        ),
        Container(
          decoration: BoxDecoration(
            boxShadow: [BoxShadow(blurRadius: 10, color: Colors.grey)],
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          height: height / 5,
          width: width / 1.5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                radius: ResponsiveRadius,
                backgroundColor: Colors.black,
                child: Icon(
                  Icons.mail,
                  size: 20,
                  color: Colors.red,
                ),
              ),
              Poppins(
                color: Colors.black,
                size: text2,
                text: "Email",
                weight: FontWeight.w500,
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Poppins(
                  color: Colors.black,
                  size: text5,
                  text: "mathiyarasans2001@gmail.com",
                  weight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),

        SizedBox(
          height: height/20,
        ),
        Container(
          decoration: BoxDecoration(
            boxShadow: [BoxShadow(blurRadius: 10, color: Colors.grey)],
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          height: height / 5,
          width: width / 1.5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                radius: ResponsiveRadius,
                backgroundColor: Colors.black,
                child: Icon(
                  Icons.call,
                  size: 20,
                  color: Colors.red,
                ),
              ),
              Poppins(
                color: Colors.black,
                size: text2,
                text: "Call",
                weight: FontWeight.w500,
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Poppins(
                  color: Colors.black,
                  size: text5,
                  text: "6383185407",
                  weight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
