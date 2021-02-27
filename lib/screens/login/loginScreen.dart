import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_saksglobal/components/customButton.dart';
import 'package:test_saksglobal/components/customText.dart';
import 'package:test_saksglobal/components/customTextField.dart';
import 'package:test_saksglobal/components/verticalSpacing.dart';
import 'package:test_saksglobal/constants/strings.dart';
import 'package:test_saksglobal/controllers/auth/authController.dart';

class LoginScreen extends StatelessWidget {
  final AuthController authController = AuthController.to;

  @override
  Widget build(BuildContext context) {
    // final AuthController authController = Get.put(AuthController());
    return Scaffold(
      appBar: AppBar(
        title: CustomText(text: Strings.login),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              children: [
                VerticalSpacing(height: 20),
                Row(
                  children: [
                    Container(width: 100, child: CustomText(text: Strings.email)),
                    Obx(() {
                      return Expanded(
                          child: CustomTextField(
                              hintText: Strings.emailHint,
                              errorText: authController.usernameError.value,
                              onChanged: authController.userChanged,
                              keyboardType: TextInputType.emailAddress,
                              labelText: Strings.email));
                    })
                  ],
                ),
                VerticalSpacing(height: 20),
                Row(
                  children: [
                    Container(width: 100, child: CustomText(text: Strings.password)),
                    Obx(() {
                      return Expanded(
                          child: CustomTextField(
                              obscureText: true,
                              onChanged: authController.passwordChanged,
                              errorText: authController.passwordError.value,
                              hintText: Strings.passwordHint,
                              labelText: Strings.password));
                    })
                  ],
                ),
                VerticalSpacing(height: 10),
                Obx(() {
                  return Align(
                      alignment: Alignment.centerRight,
                      child: CustomButton(
                        name: Strings.signIn,
                        onPressed: !authController.isFormValidate
                            ? null
                            : () {
                                authController.submit();
                              },
                      ));
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
