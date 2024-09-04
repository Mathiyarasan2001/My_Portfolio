import 'package:flutter/material.dart';
import 'package:portfolio/Custom_widgets/text.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    final text2 = (height + width) / 70;

    final text5 = (height + width) / 160;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          decoration: BoxDecoration(
            boxShadow: [BoxShadow(blurRadius: 10, color: Colors.grey)],
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          height: height / 3,
          width: width / 4,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                radius: 40,
                backgroundColor: Colors.black,
                child: Icon(
                  Icons.location_on,
                  size: 35,
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
        Container(
          decoration: BoxDecoration(
            boxShadow: [BoxShadow(blurRadius: 10, color: Colors.grey)],
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          height: height / 3,
          width: width / 4,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                radius: 40,
                backgroundColor: Colors.black,
                child: Icon(
                  Icons.mail,
                  size: 35,
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
        Container(
          decoration: BoxDecoration(
            boxShadow: [BoxShadow(blurRadius: 10, color: Colors.grey)],
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          height: height / 3,
          width: width / 4,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                radius: 40,
                backgroundColor: Colors.black,
                child: Icon(
                  Icons.call,
                  size: 35,
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
