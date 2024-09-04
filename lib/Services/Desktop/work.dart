import 'package:flutter/material.dart';
import 'package:portfolio/Custom_widgets/text.dart';
import 'package:url_launcher/url_launcher.dart';

class Work extends StatelessWidget {
  const Work({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    List grid1 = [
      [
        "assets/work/1.jpeg",
        "FashionApp is a stylish UI showcase app that brings the latest fashion trends to life with its sleek and modern design. Browse through stunning collections, organize your wardrobe effortlessly, and enjoy a seamless user experience.",
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
      [
        "assets/GifFiles/Fashion App.gif",
        "Welcome to FashionApp, where style meets innovation. Our platform brings the latest fashion trends to life with a sleek, modern design that’s both functional and inspiring. Explore stunning collections from top designers, effortlessly organize your wardrobe, and enjoy a seamless user experience. Whether you’re a fashion enthusiast or just looking to update your style, FashionApp is your go-to destination for all things fashion. Start your trend setting journey with us today!",
        "Fashion App",
        "",
        "https://github.com/Mathiyarasan2001/fashion.git"
      ],
      [
        "assets/GifFiles/MarvelApp.gif",
        "",
        "Marvel App.",
        "",
        "https://github.com/Mathiyarasan2001/marvelf.git"
      ],
    ];
    int crossAxisCount;
    if (width > 1200) {
      crossAxisCount = 3;
    } else if (width > 900) {
      crossAxisCount = 2;
    } else if (width > 600) {
      crossAxisCount = 1;
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
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    Future<void> _launcherUrl(String url) async {
      if (url.isNotEmpty && await canLaunch(url)) {
        await launch(url);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Could not launch $url")),
        );
      }
    }

    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    final text1Size = (height + width) / 200;
    final text2Size = (height + width) / 170;
    return MouseRegion(
        onEnter: (_) => setState(() {
              _isHovered = true;
            }),
        onExit: (_) => setState(() {
              _isHovered = false;
            }),
        child: _isHovered
            ? AnimatedContainer(
                duration: Duration(milliseconds: 300),
                height: height / 3,
                width: width / 5,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(widget.image), fit: BoxFit.cover),
                  boxShadow: [BoxShadow(blurRadius: 10, color: Colors.grey)],
                  color: _isHovered ? Colors.blue : Colors.white,
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
                              height: height / 5,
                              width: width / 5,
                              color: Colors.white,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
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
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: SizedBox(
                                      width: width / 15,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          IconButton(
                                              onPressed: () {
                                                _launcherUrl(widget.url1);
                                              },
                                              icon: Icon(Icons.add)),
                                          IconButton(
                                              onPressed: () {
                                                _launcherUrl(widget.url2);
                                              },
                                              icon: Icon(
                                                  Icons.insert_link_outlined))
                                        ],
                                      ),
                                    ),
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
                duration: Duration(milliseconds: 300),
                height: height / 5,
                width: width / 7,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage(
                          widget.image,
                        ),
                        fit: BoxFit.cover)),
              ));
  }
}
