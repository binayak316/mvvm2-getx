import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm_2/resources/getX_localization/language.dart';
import 'package:getx_mvvm_2/resources/routes/routes.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:getx_mvvm_2/view/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      translations: Languages(),
      locale: Locale('en', 'US'),
      fallbackLocale: Locale('en', 'US'),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: AppRoutes.appRoutes(),
      home: const SplashScreen(),
    );
  }
}
