import 'package:flutter/material.dart';
import 'package:portfolio/Custom_widgets/text.dart';

class Skill extends StatelessWidget {
  const Skill({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    List grid1 = [
      [
        "assets/Skills/flutter.jpg",
        "FLUTTER",
        "Flutter is an open-source UI software development kit created by Google"
      ],
      [
        "assets/Skills/Dart.webp",
        "DART",
        "This version highlights that Flutter uses Dart as its programming language while emphasizing its open-source nature and cross-platform capabilities."
      ],
      [
        "assets/Skills/firebase.png",
        "FIREBASE",
        "Is a set of backend cloud computing services and application development platforms"
      ],
      [
        "assets/Skills/Androidstudio.png",
        "ANDROID STUDIO",
        " Android Studio is the official integrated development environment (IDE) for Google's Android operating system."
      ],
      [
        "assets/Skills/api.jpg",
        "REST API",
        "REST API is an open-source architectural style that uses HTTP requests to perform CRUD operations on web resources."
      ],
      [
        "assets/Skills/getx.jpg",
        "GET X",
        "GetX is an open-source state management and navigation solution for Flutter that simplifies development with its reactive and dependency injection features."
      ],
      [
        "assets/Skills/Github.png",
        "GITHUB",
        "Cloud-based service for software development and version control, allowing developers to store and manage their code"
      ],
      [
        "assets/Skills/vscode.jpg",
        "VS CODE",
        "Visual Studio Code (VSCode) is an open-source code editor developed by Microsoft, known for its extensibility, debugging capabilities, and support for multiple programming languages."
      ],
    ];
    int crossAxisCount;
    if (width > 1200) {
      crossAxisCount = 4;
    } else if (width > 900) {
      crossAxisCount = 3;
    } else if (width > 600) {
      crossAxisCount = 2;
    } else {
      crossAxisCount = 1;
    }
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: GridView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: grid1.length,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 1.5),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: HoverContainer(
                image: grid1[index][0],
                Text1: grid1[index][1],
                Text2: grid1[index][2]),
          );
        },
      ),
    );
  }
}

class HoverContainer extends StatefulWidget {
  final String image;
  final String Text1;
  final String Text2;

  const HoverContainer({
    super.key,
    required this.image,
    required this.Text1,
    required this.Text2,
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
    final text1Size = (height + width) / 120;
    final text2Size = (height + width) / 200;

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
        width: width / 5,
        decoration: BoxDecoration(
          boxShadow: [BoxShadow(blurRadius: 10, color: Colors.grey)],
          color: _isHovered ? Colors.blue : Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Center(
                  child: SizedBox(
                    height: height / 7,
                    width: width / 10,
                    child: Image.asset(
                      widget.image,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Poppins(
                  color: _isHovered ? Colors.white : Colors.black,
                  size: text1Size,
                  text: widget.Text1,
                  weight: FontWeight.w700,
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Poppins(
                    color: _isHovered ? Colors.white : Colors.black,
                    size: text2Size,
                    text: widget.Text2,
                    weight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
