import 'package:flutter/material.dart';


///==============================================================container===============================================================///

Widget container({double? height,double? width,Decoration? decoration,Widget? child}){
  return Container(
    height: height,
    width: width,
    decoration: decoration,
    child: child,
  );
}

///================================================================sizeBox================================================================///

Widget sizeBox({double? width,double? height}){
  return SizedBox( width: width,height: height,);
}

///===============================================================circle avtar==============================================================///

Widget circleAvtar({Color? backgroundColor,ImageProvider<Object>? backgroundImage,double? radius,Widget? child}){
  return CircleAvatar(
    backgroundColor: backgroundColor,
    backgroundImage: backgroundImage,
    radius: radius,
    child: child,
  );
}

///=================================================================ListTile==================================================================///

Widget listTile({Widget? leading,Widget? title,Widget? subtitle,Widget? trailing}){
  return ListTile(
    leading: leading,
    title: title,
    subtitle: subtitle,
    trailing: trailing,
  );
}