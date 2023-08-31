import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:videocall/common/common_screen.dart';
import 'package:videocall/utils/color.dart';
import 'package:videocall/utils/icon.dart';
import 'package:videocall/utils/image.dart';
import 'package:videocall/utils/text.dart';

import 'genderpage_controller.dart';

Widget textContainer() {
  return GetBuilder<VideoController>(
    builder: (controller) {
      return Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                controller.onTapClick();
              },
              child: const Icon(IconRes.back, color: ColorRes.white),
            ),
            const SizedBox(width: 50),
            const Text(
              TextRes.selectGender,
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: ColorRes.white),
            ),
            const Spacer(),
          ],
        ),
      );
    },
  );
}

Widget circleImage() {
  return GetBuilder<VideoController>(
    builder: (controller) {
      return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              sizeBox(width: 20),
              InkWell(
                onTap: () {
                  Get.to(const ConnectionScreen());
                },
                child: Column(
                  children: [
                    container(
                        height: 180,
                        width: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: const Image(image: AssetImage(ImageRes.i6))),
                    const Text(
                      TextRes.female,
                      style: TextStyle(
                          color: ColorRes.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Get.to(const ConnectionScreen());
                },
                child: Column(
                  children: [
                    container(
                        height: 180,
                        width: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: const Image(image: AssetImage(ImageRes.i5))),
                    const Text(TextRes.male,
                        style: TextStyle(
                            color: ColorRes.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w300)),
                  ],
                ),
              ),
              sizeBox(width: 12),
            ],
          ),
          sizeBox(height: 20),
        ],
      );
    },
  );
}

class ConnectionScreen extends StatelessWidget {
  const ConnectionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

  //  late VideoPlayerController controller;

    return SafeArea(
      child: Scaffold(
        body: GetBuilder<VideoController>(
          builder: (controller) {
            return Container(
              decoration: const BoxDecoration(
                // color: Colors.yellow,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(ImageRes.iCpl),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {

                            controller.onTapClick();
                          },
                          child: const Icon(IconRes.back),
                        ),
                        const SizedBox(width: 40),
                        const Text(
                          TextRes.connectYourPartner,
                          style: TextStyle(
                              fontWeight: FontWeight.w300, fontSize: 18),
                        ),
                        const Spacer(),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 670),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            controller.onClick();
                          },
                          child: container(
                            height: 45,
                            width: 170,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border:
                                  Border.all(color: ColorRes.white, width: 2),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                circleAvtar(
                                  backgroundImage:
                                      const AssetImage(ImageRes.i3),
                                  backgroundColor: ColorRes.white,
                                  radius: 15,
                                ),
                                sizeBox(width: 5),
                                const Text(
                                  TextRes.connecting,
                                  style: TextStyle(
                                      color: ColorRes.white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 21),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
