import 'package:get/get.dart';
import 'package:videocall/screen/call/call_screen.dart';


class VideoController extends GetxController{
  onTapClick(){
    Get.back();
  }
  onClick(){
    Get.to(()=> const CallMatchVideo());
  }

}