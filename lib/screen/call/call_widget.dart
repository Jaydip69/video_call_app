import 'package:flutter/material.dart';
import 'package:flutter_ripple/flutter_ripple.dart';
import 'package:get/get.dart';
import 'package:jumping_dot/jumping_dot.dart';
import 'package:videocall/common/common_screen.dart';
import 'package:videocall/utils/color.dart';
import 'package:videocall/utils/icon.dart';
import 'package:videocall/utils/image.dart';
import 'package:videocall/utils/text.dart';

Widget text() {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
      children: [
        InkWell(
          onTap: () {
            Get.back();
          },
          child: const Icon(IconRes.back,color: ColorRes.white),
        ),
        const Spacer(),
        const Text(
          TextRes.searching,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300,color: ColorRes.white),
        ),

      ],
    ),
  );
}

Widget animation() {
  return FlutterRipple(
    rippleColor: ColorRes.black,
    child:
        circleAvtar(radius: 35, backgroundImage: const AssetImage(ImageRes.i4)),
  );
}
Widget containerButton() {
  return JumpingDots(
    animationDuration: const Duration(milliseconds: 220),
    radius: 20,
    numberOfDots: 4,
    color: ColorRes.white54,
  );
}
