// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/image.dart';
import 'genderpage_controller.dart';
import 'genderpage_widget.dart';

class GenderScreen extends StatelessWidget {
  const GenderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(VideoController());
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(ImageRes.iCpl3), fit: BoxFit.fill),
          ),
          child: Column(
            children: [
              textContainer(),
              const Spacer(),
              circleImage(),
            ],
          ),
        ),
      ),
    );
  }
}
