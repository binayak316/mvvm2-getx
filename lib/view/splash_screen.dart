import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:getx_mvvm_2/resources/colors/app_color.dart';
import 'package:getx_mvvm_2/resources/components/gernal_exception.dart';
import 'package:getx_mvvm_2/view_model/services/splash_services.dart';

import '../resources/assets/image_assets.dart';
import '../resources/components/internet_exception_widget.dart';
import '../resources/components/round_button.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashServices splashScreen = SplashServices();
  @override
  void initState() {
    super.initState();
    splashScreen.isLogin();
  }

  Widget build(BuildContext context) {
    // return InternetExceptionWidget();
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
          child: Text(
        'welcome_back'.tr,
        textAlign: TextAlign.center,
      )),
    );
  }
}
