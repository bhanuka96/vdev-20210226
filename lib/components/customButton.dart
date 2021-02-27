import 'package:flutter/material.dart';
import 'package:test_saksglobal/components/customText.dart';

class CustomButton extends StatelessWidget {
  final String name;
  final Function onPressed;
  const CustomButton({Key key, this.name, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        key: key,
        onPressed: onPressed,
        child: CustomText(
          text: name,
        ));
  }
}
