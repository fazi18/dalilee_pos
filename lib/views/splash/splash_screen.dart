import 'dart:async';

import 'package:dalilee_pos/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/images.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Get.offAllNamed(Routes.login);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Stack(
          children: [
            Image.asset(
              AppImages.splashBG,
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Center(
                child: Image.asset(
              AppImages.logo,
              width: MediaQuery.of(context).size.width * .7,
            )),
          ],
        ),
      ),
    );
  }
}
