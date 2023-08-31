import 'dart:async';
import 'package:get/get.dart';
import 'package:videocall/screen/startapp/start_screen.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    {
      Timer(
        const Duration(seconds: 3),
        () {
          Get.to(() => const StartScreen());
        },
      );
      super.onInit();
    }
  }
}
