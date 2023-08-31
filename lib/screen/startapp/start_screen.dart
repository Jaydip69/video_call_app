import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:videocall/common/common_screen.dart';
import 'package:videocall/screen/startapp/start_controller.dart';
import 'package:videocall/screen/startapp/start_widget.dart';
import '../../utils/image.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(StartController());
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(ImageRes.iCpl5), fit: BoxFit.fill),
          ),
          child: Column(
            children: [
              const SizedBox(height: 50),
              containerText(),
              const Spacer(),
              buttonCon(),
              sizeBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
