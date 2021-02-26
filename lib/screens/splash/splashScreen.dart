import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_saksglobal/constants/palette.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.white,
      body: Center(
        child: CupertinoActivityIndicator(),
      ),
    );
  }
}
