import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_flutter/customs/fonst.dart';

import '../cancave_widget.dart';

class CustomTile extends StatelessWidget {

  Widget image;
  double? imageHeight;
  double? imageWidth;
  double? tileWidth;
  String? text;
  Widget child;
  double? fontSize;
  Color? fontColor;

  CustomTile({
    required this.image,
    this.imageHeight,
    this.imageWidth,
    this.tileWidth,
    required this.child,
    this.text,
    this.fontSize,
    this.fontColor,
    super.key});

  @override
  Widget build(BuildContext context) {
    return  ConcaveWidget(
      profileRadius: 60,
      width: tileWidth,
      child: Row(

        children: [
          ConcaveWidget(
            profileRadius: 60,
            height: imageHeight ?? 100,
            width: imageWidth ?? 100,
            child:image,
          ),
          const SizedBox(width: 20),

          text != null ? Text(text!,style: boldFontStyle.copyWith(fontSize: fontSize ?? 22,color: fontColor ?? Colors.black)) : child,
        ],
      ),
    );
  }
}
