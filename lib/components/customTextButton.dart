import 'package:flutter/material.dart';
import 'package:test_saksglobal/components/customText.dart';
import 'package:test_saksglobal/constants/strings.dart';

class CustomTextButton extends StatelessWidget {
  final Function onPressed;

  const CustomTextButton({Key key, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: onPressed, child: CustomText(text: Strings.signOut));
  }
}
