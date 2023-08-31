
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:videocall/common/common_screen.dart';
import 'package:videocall/screen/livecall/livecall_controller.dart';
import 'package:videocall/screen/livecall/livecall_widget.dart';
import '../../utils/image.dart';

class LiveCall extends StatelessWidget {
  const LiveCall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(LiveController());
    return SafeArea(
      child: Scaffold(
         appBar: drawer1(),
        drawer: d1(),
        body: Container(
          decoration: const BoxDecoration(image: DecorationImage(image: AssetImage(ImageRes.iCpl4),fit: BoxFit.fill),),
          child: Column(
            children: [
              imageCall(),
              imageCall(),
              containerText(),
              sizeBox(height: 10),
              buttonCon(),
            ],
          ),
        ),
      ),
    );
  }
}
