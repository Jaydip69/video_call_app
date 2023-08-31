import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:videocall/common/common_screen.dart';
import 'package:videocall/screen/call/call_controller.dart';
import 'package:videocall/screen/call/call_widget.dart';
import '../../utils/image.dart';

class CallMatchVideo extends StatelessWidget {
  const CallMatchVideo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(CallController());
    return SafeArea(
      child: SafeArea(
        child: Scaffold(
          body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    ImageRes.iCpl2,
                  ),
                  fit: BoxFit.fill),
            ),
            child: Column(
              children: [
                text(),
                sizeBox(height: 220),
                animation(),
                const Spacer(),
                containerButton(),
                sizeBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
