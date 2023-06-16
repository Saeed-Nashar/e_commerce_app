

import 'package:e_com_new2/view/screen/auth/forgetpassword/forgetpassword.dart';
import 'package:e_com_new2/view/screen/auth/forgetpassword/resetpassword.dart';
import 'package:e_com_new2/view/screen/auth/forgetpassword/success_resetpassword.dart';
import 'package:e_com_new2/view/screen/auth/forgetpassword/verifycode.dart';
import 'package:e_com_new2/view/screen/auth/login.dart';
import 'package:e_com_new2/view/screen/auth/signup.dart';
import 'package:e_com_new2/view/screen/auth/success_signup.dart';
import 'package:e_com_new2/view/screen/language.dart';
import 'package:e_com_new2/view/screen/onboarding.dart';
import 'package:e_com_new2/view/test_view.dart';

import 'package:get/get_navigation/src/routes/get_route.dart';

import 'core/constant/routes.dart';
import 'core/middelware/middelware.dart';
import 'view/screen/auth/forgetpassword/verifycodesignup.dart';

List<GetPage<dynamic>>? routes = [
/*  GetPage(name: "/", page: () => const Language() , middlewares: [
    MyMiddleWare(),
  ]),*/

  GetPage(name: "/", page: () => TestView()),

  GetPage(name: AppRoute.login, page: () => const Login()),
  GetPage(name: AppRoute.signUp, page: () => const SignUp()),
  GetPage(name: AppRoute.forgetPassword, page: () => const ForgetPassword()),
  GetPage(name: AppRoute.verfiyCode, page: () => const VerfiyCode()),
  GetPage(name: AppRoute.resetPassword, page: () => const ResetPassword()),
  GetPage(name: AppRoute.successResetpassword, page: () =>  SuccessResetPassword()),
  GetPage(name: AppRoute.successSignUp, page: () =>  SuccessSignUp()),
  GetPage(name: AppRoute.onBoarding, page: () => const OnBoarding()),
  GetPage(name: AppRoute.verfiyCodeSignUp, page: () => const VerfiyCodeSignUp()),
];

