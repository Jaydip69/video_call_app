import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:videocall/common/common_screen.dart';
import 'package:videocall/screen/startapp/start_controller.dart';
import 'package:videocall/utils/color.dart';
import 'package:videocall/utils/icon.dart';
import 'package:videocall/utils/text.dart';

Widget containerText() {
  return Center(
    child: container(
      decoration: BoxDecoration(
        color: ColorRes.white54,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: ColorRes.blue),
      ),
      child: const Padding(
        padding: EdgeInsets.all(13.0),
        child: Text(
          TextRes.liveCall,
          style: TextStyle(color: ColorRes.black, fontWeight: FontWeight.w500),
        ),
      ),
    ),
  );
}

Widget buttonCon() {
  return GetBuilder<StartController>(
    builder: (controller) {
      return InkWell(
        onTap: () => controller.onTap1(),
        child: container(
          height: 50,
          width: 160,
          decoration: BoxDecoration(
            color: ColorRes.white54,
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: ColorRes.blue, width: 1.5),
          ),
          child: Row(
            children: [
              const SizedBox(width: 15),
              const Text(
                TextRes.start,
                style: TextStyle(
                    color: ColorRes.black,
                    fontWeight: FontWeight.w300,
                    fontSize: 18),
              ),
              sizeBox(width: 8),
              circleAvtar(
                backgroundColor: ColorRes.white54,
                radius: 23.5,
                child: const Icon(
                  IconRes.arrow,
                  color: ColorRes.black,
                ),
              ),
              // const Text('App'),
            ],
          ),
        ),
      );
    },
  );
}
