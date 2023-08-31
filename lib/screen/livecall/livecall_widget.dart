import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:videocall/common/common_screen.dart';
import 'package:videocall/screen/livecall/livecall_controller.dart';
import 'package:videocall/screen/privecy/privecy_screen.dart';
import 'package:videocall/utils/color.dart';
import 'package:videocall/utils/icon.dart';
import 'package:videocall/utils/image.dart';
import 'package:videocall/utils/text.dart';

List<Map> data = [
  {
    'icon': IconRes.lock,
    'text': TextRes.lock,
  },
  {
    'icon': IconRes.star,
    'text': TextRes.star1,
  },
  {
    'icon': IconRes.share,
    'text': TextRes.share,
  },
];

AppBar drawer1() {
  return AppBar(
    backgroundColor: ColorRes.shadowWhite,
    elevation: 0,
    iconTheme: const IconThemeData(color: Colors.black),
    title: const Text(
      TextRes.videoCall,
      style: TextStyle(color: ColorRes.black,fontWeight: FontWeight.w400),
    ),
    centerTitle: true,
  );
}

Drawer d1() {
  return Drawer(
    child: SingleChildScrollView(
      child: Column(
        children: [
          sizeBox(height: 40),
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.bottomCenter,
            children: [
              circleAvtar(
                  radius: 50, backgroundImage: const AssetImage(ImageRes.i4)),
              Positioned(
                bottom: -10,
                child: circleAvtar(
                  backgroundColor: ColorRes.red,
                  radius: 13,
                  child: const Icon(
                    IconRes.call,
                    color: ColorRes.white,
                    size: 15,
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                child: circleAvtar(
                  backgroundColor: ColorRes.black,
                  radius: 10,
                  child: const Icon(IconRes.camera,
                      size: 12, color: ColorRes.white),
                ),
              ),
              Positioned(
                //right: 0,
                bottom: 10,
                child: circleAvtar(
                  backgroundColor: ColorRes.black,
                  radius: 10,
                  child: const Icon(IconRes.video,
                      size: 12, color: ColorRes.white,),
                ),
              ),
            ],
          ),
          list(),
        ],
      ),
    ),
  );
}

Widget imageCall() {
  return container(
    height: 230,
    child: Image.asset(
      ImageRes.i2,
      fit: BoxFit.cover,
    ),
  );
}

Widget containerText() {
  return Column(
    children: [
      const SizedBox(height: 60),
      container(
        decoration: BoxDecoration(
            color: ColorRes.shadowBlack,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: ColorRes.black)),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              const Text(
                TextRes.people,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    color: ColorRes.white),
              ),
              sizeBox(height: 5),
              const Text(
                TextRes.availble,
                style: TextStyle(color: ColorRes.white),
              ),
              sizeBox(height: 5),
              const Text(
                TextRes.find,
                style: TextStyle(color: ColorRes.white),
              )
            ],
          ),
        ),
      ),
    ],
  );
}

Widget buttonCon() {
  return GetBuilder<LiveController>(
    builder: (controller) {
      return InkWell(
        onTap: () => controller.onTap2(),
        child: container(
            height: 50,
            width: 230,
            decoration: BoxDecoration(
              color: ColorRes.shadowBlack,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: ColorRes.black, width: 1),
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  circleAvtar(
                    backgroundImage: const AssetImage(ImageRes.i3),
                    backgroundColor: ColorRes.white,
                    radius: 18,
                  ),
                  sizeBox(width: 10),
                  const Text(
                    TextRes.match,
                    style: TextStyle(
                        color: ColorRes.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  )
                ],
              ),
            )),
      );
    },
  );
}

Widget list() {
  return GetBuilder<LiveController>(
    builder: (controller) {
      return container(
        height: 500,
        child: ListView.builder(
          itemCount: data.length,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {
                index == 0
                    ? Get.to(const Privecy())
                    : index == 2
                        ? controller.share()
                        : const SizedBox();
              },
              child: listTile(
                leading: Icon(
                  data[index]['icon'],
                  color: ColorRes.black,
                ),
                title: Text(data[index]['text']),
              ),
            );
          },
        ),
      );
    },
  );
}
