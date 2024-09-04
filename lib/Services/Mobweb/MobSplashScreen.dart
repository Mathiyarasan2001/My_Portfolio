import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/Screens/MobHome.dart';

class MobSplashscreen extends StatefulWidget {
  const MobSplashscreen({super.key});

  @override
  State<MobSplashscreen> createState() => _MobSplashscreenState();
}

class _MobSplashscreenState extends State<MobSplashscreen> {
  @override
  void initState() {
    _timer();
    super.initState();
  }

  _timer() async {
    Timer(
      await Duration(seconds: 3),
      () => Get.off(() => MobHomePage()),
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
