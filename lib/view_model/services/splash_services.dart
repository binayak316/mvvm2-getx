import 'dart:async';

import 'package:get/get.dart';
import 'package:getx_mvvm_2/view/login/login_view.dart';

import '../../resources/routes/routes_name.dart';
import '../../view/login/login_view.dart';
import '../../view/login/login_view.dart';

class SplashServices {
  void isLogin() {
    Timer(
      const Duration(seconds: 3),
      () => Get.toNamed(RouteName.loginView),
    );
  }
}
