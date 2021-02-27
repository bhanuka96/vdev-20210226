import 'package:flutter/material.dart';

class CustomText extends Text {
  final String text;
  final TextOverflow textOverflow;
  final TextAlign textAlign;
  final int maxLines;

  CustomText({this.textAlign, this.maxLines, this.textOverflow = TextOverflow.fade, @required this.text})
      : super(text, textAlign: textAlign, maxLines: maxLines, overflow: textOverflow);
}
