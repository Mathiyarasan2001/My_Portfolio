import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/Screens/MobHome.dart';
import 'package:portfolio/Screens/home.dart';

import '../Responsive.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    _timer();
    super.initState();
  }

  _timer() async {
    Timer(
      await Duration(seconds: 3),
      () => Get.off(() => ResponsiveLayout(
          mobileScaffold: MobHomePage(),
          desktopScaffold: HomePage(),
          tabletScaffold: HomePage())),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 50,
        width: 50,
        child: CircularProgressIndicator(
          backgroundColor: Colors.grey,
          color: Colors.red,
        ),
      ),
    );
  }
}
