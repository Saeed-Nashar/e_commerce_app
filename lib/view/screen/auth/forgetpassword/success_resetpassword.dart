
import 'package:e_com_new2/controller/auth/successresetpassword.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/get_utils.dart';

import '../../../../core/constant/color.dart';
import '../../../widget/auth/custombuttonauth.dart';

class SuccessResetPassword extends StatelessWidget {
 SuccessResetPasswordControllerImp controllerImp=Get.put(SuccessResetPasswordControllerImp());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('Success',
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(children: [
          const Center(
              child: Icon(
            Icons.check_circle_outline,
            size: 200,
            color: AppColor.primaryColor,
          )),
          Text("37".tr , style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 30)),
          Text("36".tr),
          const Spacer(),
          SizedBox(
            width: double.infinity,
            child: CustomButtomAuth(
                text: "31".tr,
                onPressed: () {
                  controllerImp.goToPageLogin();
                }),
          ),
          SizedBox(height: 30)
        ]),
      ),
    );
  }
}
