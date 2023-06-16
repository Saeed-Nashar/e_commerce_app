
import 'package:e_com_new2/core/function/alertexit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/auth/signup_controller.dart';
import '../../../core/constant/color.dart';
import '../../../core/function/validinput.dart';
import '../../widget/auth/custombuttonauth.dart';
import '../../widget/auth/customtextbodyauth.dart';
import '../../widget/auth/customtextformauth.dart';
import '../../widget/auth/customtexttitleauth.dart';
import '../../widget/auth/textsignup.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SignUpControllerImp controller = Get.put(SignUpControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('17'.tr,
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey)),
      ),
      body: WillPopScope(
        onWillPop: alertExitApp,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
          child: Form(
            key: controller.formstate,
            child: ListView(
                children: [
              const SizedBox(height: 20),
              CustomTextTitleAuth(text: "10".tr),
              const SizedBox(height: 10),
              CustomTextBodyAuth(text: "24".tr),
              const SizedBox(height: 15),
              CustomTextFormAuth(
                keyboardType: TextInputType.name,
                mycontroller: controller.username,
                hinttext: "23".tr,
                iconData: Icons.person_outline,
                labeltext: "20".tr,
                valid: (String? val) {
                  return validInput(val!, 3, 30, "username");
                },
                // mycontroller: ,
              ),
              CustomTextFormAuth(
                keyboardType: TextInputType.emailAddress,
                mycontroller: controller.email,
                hinttext: "12".tr,
                iconData: Icons.email_outlined,
                labeltext: "18".tr,
                valid: (String? val) {
                  return validInput(val!, 5, 100, "email");
                },
                // mycontroller: ,
              ),
              CustomTextFormAuth(
                keyboardType: TextInputType.phone,
                mycontroller: controller.phone,
                hinttext: "22".tr,
                iconData: Icons.phone_android_outlined,
                labeltext: "21".tr,
                valid: (String? val) {
                  return validInput(val!, 9, 16, "phone");
                },
                // mycontroller: ,
              ),
                  GetBuilder<SignUpControllerImp>(
                    builder: (controller) => CustomTextFormAuth(
                      obscure: controller.isShowPassword,
                      onTapIcon: () {
                        controller.showPassword();
                      },
                      valid: (val) {
                        return validInput(val!, 5, 30, "password");
                      },
                      mycontroller: controller.password,
                      hinttext: "13".tr,
                      iconData: Icons.lock_outline,
                      labeltext: "19".tr,
                      keyboardType: TextInputType.visiblePassword,
                      // mycontroller: ,
                    ),
                  ),
              CustomButtomAuth(
                  text: "17".tr,
                  onPressed: () {
                    controller.signUp();
                  }),
              const SizedBox(height: 40),
              CustomTextSignUpOrSignIn(
                textone: "25".tr,
                texttwo: "26".tr,
                onTap: () {
                  controller.goToSignIn();
                },
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
