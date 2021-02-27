import 'package:flutter/material.dart';
import 'package:test_saksglobal/components/customText.dart';

class CustomButton extends StatelessWidget {
  final String name;

  const CustomButton({Key key, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        key: key,
        onPressed: () {},
        child: CustomText(
          text: name,
        ));
  }
}
