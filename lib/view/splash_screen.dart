import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:getx_mvvm_2/resources/colors/app_color.dart';
import 'package:getx_mvvm_2/resources/components/gernal_exception.dart';

import '../resources/assets/image_assets.dart';
import '../resources/components/internet_exception_widget.dart';
import '../resources/components/round_button.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    // return InternetExceptionWidget();
    return Scaffold(
      appBar: AppBar(
        title: Text('email_hint'.tr),
      ),
      body: Column(
        children: [
          RoundButton(
            onPress: () {},
            title: 'Login',
            height: 50,
            width: 200,
          ),
          RoundButton(
            onPress: () {},
            title: 'Signup',
            loading: true,
            buttonColor: AppColor.blackColor,
          )
        ],
      ),
    );
  }
}
