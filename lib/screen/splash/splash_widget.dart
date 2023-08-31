import 'package:flutter/cupertino.dart';
import 'package:videocall/common/common_screen.dart';
import 'package:videocall/utils/image.dart';

Widget splash(){
  return container(
      height: double.infinity,
      width: double.infinity,
      child: const Image(image: AssetImage(ImageRes.i1),fit: BoxFit.cover,));
}