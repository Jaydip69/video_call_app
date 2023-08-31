import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:videocall/screen/splash/splash_controller.dart';
import 'package:videocall/screen/splash/splash_widget.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());
    return SafeArea(
      child: Scaffold(
        body: splash(),
      ),
    );
  }
}
