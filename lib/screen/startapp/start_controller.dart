import 'package:get/get.dart';
import 'package:videocall/screen/livecall/livecall_screen.dart';

class StartController extends GetxController{
  void onTap1(){
    Get.to(const LiveCall());
  }
}

