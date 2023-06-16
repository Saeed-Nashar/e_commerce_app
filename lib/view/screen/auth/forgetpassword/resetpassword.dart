import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../../../widget/auth/custombuttonauth.dart';
import '../../../widget/auth/customtextbodyauth.dart';

import '../../../widget/auth/customtextformauth.dart';
import '../../../widget/auth/customtexttitleauth.dart';

import '../../../../controller/auth/resetpassword_controller.dart';
import '../../../../core/constant/color.dart';
class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImp controller =
        Get.put(ResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('ResetPassword',
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(children: [
          const SizedBox(height: 20),
          CustomTextTitleAuth(text: "35".tr),
          const SizedBox(height: 10),
          CustomTextBodyAuth(text: "35".tr),
          const SizedBox(height: 15),
          CustomTextFormAuth(
            keyboardType: TextInputType.visiblePassword,
            mycontroller: controller.password,
            hinttext: "13".tr,
            iconData: Icons.lock_outline,
            labeltext: "19".tr, valid: (String? val) {  },
            // mycontroller: ,
          ),
          CustomTextFormAuth(
            keyboardType: TextInputType.visiblePassword,
            mycontroller: controller.password,
            hinttext: "*".tr + " " + "13".tr,
            iconData: Icons.lock_outline,
            labeltext: "19".tr, valid: (String? val) {  },
            // mycontroller: ,
          ),
          CustomButtomAuth(
              text: "33".tr,
              onPressed: () {
                controller.goToSuccessResetPassword();
              }),
          const SizedBox(height: 40),
        ]),
      ),
    );
  }
}
