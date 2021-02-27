import 'package:flutter/material.dart';

class CustomText extends Text {
  final String text;
  final TextOverflow textOverflow;
  final TextAlign textAlign;
  final int maxLines;
  final Color color;

  CustomText({this.textAlign, this.color, this.maxLines, this.textOverflow = TextOverflow.fade, @required this.text})
      : super(text, textAlign: textAlign, style: TextStyle(color: color), maxLines: maxLines, overflow: textOverflow);
}
