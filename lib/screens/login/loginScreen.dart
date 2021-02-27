import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_saksglobal/components/customButton.dart';
import 'package:test_saksglobal/components/customText.dart';
import 'package:test_saksglobal/components/customTextField.dart';
import 'package:test_saksglobal/components/verticalSpacing.dart';
import 'package:test_saksglobal/constants/strings.dart';
import 'package:test_saksglobal/controllers/auth/authController.dart';

class LoginScreen extends StatelessWidget {
  // final AuthController authController = AuthController.to;

  @override
  Widget build(BuildContext context) {
    final AuthController authController = Get.put(AuthController());
    return Scaffold(
      appBar: AppBar(
        title: CustomText(text: Strings.login),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              VerticalSpacing(height: 20),
              Row(
                children: [
                  CustomText(text: Strings.email),
                  Obx(() {
                    return Expanded(child: CustomTextField(hintText: Strings.emailHint, labelText: Strings.email));
                  })
                ],
              ),
              VerticalSpacing(height: 20),
              Row(
                children: [
                  CustomText(text: Strings.password),
                  Obx(() {
                    return Expanded(child: CustomTextField(obscureText: true, hintText: Strings.passwordHint, labelText: Strings.password));
                  })
                ],
              ),
              VerticalSpacing(height: 20),
              Obx(() {
                return CustomButton(name: Strings.signIn);
              })
            ],
          ),
        ),
      ),
    );
  }
}
