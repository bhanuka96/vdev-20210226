import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_saksglobal/components/customText.dart';
import 'package:test_saksglobal/components/customTextButton.dart';
import 'package:test_saksglobal/components/verticalSpacing.dart';
import 'package:test_saksglobal/constants/strings.dart';
import 'package:test_saksglobal/controllers/auth/authController.dart';
import 'package:test_saksglobal/controllers/dashboard/dashController.dart';

class DashboardScreen extends GetView<DashController> {
  final AuthController authController = AuthController.to;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(text: authController.authUser.value),
        centerTitle: true,
        actions: [CustomTextButton(onPressed: authController.signOut)],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: Strings.category,
            ),
            VerticalSpacing(height: 20),
            controller.obx((state) {
              return Expanded(
                child: ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (_, int index) {
                      return ListTile(
                        isThreeLine: true,
                        title: CustomText(text: '${state.data[index].name}'),
                        subtitle: CustomText(text: '${state.data[index].description}\n${state.data[index].status}'),
                      );
                    },
                    separatorBuilder: (_, int index) {
                      return Divider();
                    },
                    itemCount: state.data.length),
              );
            })
          ],
        ),
      ),
    );
  }
}
