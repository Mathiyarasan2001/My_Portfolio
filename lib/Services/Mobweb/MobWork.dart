import 'package:flutter/material.dart';
import 'package:portfolio/Custom_widgets/text.dart';
import 'package:url_launcher/url_launcher.dart';

class MobWork extends StatelessWidget {
  const MobWork({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    List grid1 = [
      [
        "assets/work/1.jpeg",
        "Flutter is an open-source UI software development kit created by Google",
        "Fashion Website",
        "https://shoppingfashion.netlify.app/",
        "https://github.com/Mathiyarasan2001/fashion-Website.git"
      ],
      [
        "assets/GifFiles/Movie Api.gif",
        "MovieApi is a sleek and user-friendly movie UI app that lets you explore a world of cinema with ease.",
        "Movie Api",
        "https://fluttermovieapi.netlify.app/",
        "https://github.com/Mathiyarasan2001/movieapi.git"
      ],
      [
        "assets/GifFiles/Dynamic.gif",
        "Developed a Flutter app with RESTful API integration, enabling user login and product retrieval for seamless browsing and order placement. Enhanced retail operations through efficient mobile interaction.",
        " Rest Api Login",
        "",
        "https://github.com/Mathiyarasan2001/DealsDray.git"
      ],
      [
        "assets/GifFiles/Toktok.gif",
        "Developed a Flutter mobile application incorporating the Razorpay package to facilitate secure and effcient payment processing. Implemented features for seamless order creation, payment status tracking,and transaction history.",
        "Razor Pay",
        "",
        "https://github.com/Mathiyarasan2001/razorpay.git"
      ],
      [
        "assets/GifFiles/Betting.gif",
        "Developed a cricket betting app similar to Dream11, enabling users to create fantasy teams, join contests, and track live scores. Contributed to coding, testing, and feature integration",
        "Betting",
        "",
        "https://github.com/Mathiyarasan2001/betting.git"
      ],
      [
        "assets/work/onespire.png",
        "website is a prime example of modern web design. It features high-quality images and videos, and the overall experience is very polished and user-friendly, reflecting the innovative nature of the company.",
        "Tech Company Website",
        "https://onespire.netlify.app/",
        "https://github.com/Mathiyarasan2001/ONESITE.git"
      ],
      ["assets/GifFiles/Fashion App.gif", "REST API", "Fashion App", "", ""],
      ["assets/GifFiles/MarvelApp.gif", "GET X", "Marvel App.", "", ""],
    ];

    int crossAxisCount;
    if (width > 1200) {
      crossAxisCount = 3;
    } else if (width > 900) {
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
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 2.1 / 1.2),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: HoverContainer1(
              image: grid1[index][0],
              Text1: grid1[index][1],
              Text2: grid1[index][2],
              url1: grid1[index][3],
              url2: grid1[index][4],
            ),
          );
        },
      ),
    );
  }
}

class HoverContainer1 extends StatefulWidget {
  final String image;
  final String Text1;
  final String Text2;
  final String url1;
  final String url2;

  const HoverContainer1({
    super.key,
    required this.image,
    required this.Text1,
    required this.Text2,
    required this.url1,
    required this.url2,
  });

  @override
  _HoverContainer1State createState() => _HoverContainer1State();
}

class _HoverContainer1State extends State<HoverContainer1> {
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    Future<void> _launchUrl(String url) async {
      if (url.isNotEmpty) {
        final Uri uri = Uri.parse(url);
        if (await canLaunchUrl(uri)) {
          await launchUrl(uri);
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("Could not launch $url")),
          );
        }
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("URL is empty")),
        );
      }
    }

    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    final text1Size = (height + width) / 150;
    final text2Size = (height + width) / 120;

    return InkWell(
      onTap: () => setState(() {
        isTapped = !isTapped;
      }),
      child: isTapped
          ? AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              height: height / 2,
              width: width / 5,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(widget.image), fit: BoxFit.cover),
                boxShadow: const [
                  BoxShadow(blurRadius: 10, color: Colors.grey)
                ],
                color: isTapped ? Colors.blue : Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(
                children: [
                  Container(
                    color: Colors.transparent,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Center(
                          child: Container(
                            height: height / 6,
                            width: width / 1.5,
                            color: Colors.white,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Poppins(
                                    color: Colors.black,
                                    size: text2Size,
                                    text: widget.Text2,
                                    weight: FontWeight.w600,
                                  ),
                                ),
                                Poppins(
                                  color: Colors.black,
                                  size: text1Size,
                                  text: widget.Text1,
                                  weight: FontWeight.w400,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    IconButton(
                                        onPressed: () {
                                          _launchUrl(widget.url1);
                                        },
                                        icon: const Icon(Icons.add, size: 20)),
                                    IconButton(
                                        onPressed: () {
                                          _launchUrl(widget.url2);
                                        },
                                        icon: const Icon(
                                            Icons.insert_link_outlined,
                                            size: 20))
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          : AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              height: height / 5,
              width: width / 7,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage(widget.image), fit: BoxFit.cover)),
            ),
    );
  }
}
