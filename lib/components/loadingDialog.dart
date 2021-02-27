import 'package:flutter/material.dart';
import 'package:test_saksglobal/components/verticalSpacing.dart';
import 'package:test_saksglobal/constants/palette.dart';
import 'package:test_saksglobal/constants/strings.dart';
import 'customSize.dart';
import 'customText.dart';

class LoadingDialog extends WillPopScope {
  final BuildContext context;

  LoadingDialog({this.context})
      : super(
          onWillPop: () async => false,
          child: Padding(
            padding: EdgeInsets.only(left: CustomSize.width * .1, right: CustomSize.width * .1, top: CustomSize.height * .3, bottom: CustomSize.height * .3),
            child: AlertDialog(
              backgroundColor: Palette.orange,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
              content: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Palette.white),
                  ),
                  VerticalSpacing(height: 20),
                  CustomText(text: Strings.process,color: Palette.white,)
                ],
              ),
            ),
          ),
        );
}
