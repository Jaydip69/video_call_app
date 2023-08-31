import 'dart:async';

import 'package:get/get.dart';
import 'package:videocall/screen/call/video/vc.dart';

class CallController extends GetxController{
  @override
  void onInit() {
    super.onInit();
    Timer(const Duration(seconds: 5), () {
      Get.to(()=> const VideoApp());
    });
  }
}