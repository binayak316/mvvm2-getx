import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

import '../resources/colors/app_color.dart';

class Utils {
  static void fieldFocusChange(
      BuildContext context, FocusNode current, FocusNode nextFocus) {
    current.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  static toastMessage(String message) {
    Fluttertoast.showToast(
      msg: message,
      backgroundColor: AppColor.blackColor,
      gravity: ToastGravity.BOTTOM,
    );
  }

  static toastMessageCenter(String message) {
    Fluttertoast.showToast(
      msg: message,
      backgroundColor: AppColor.redColor,
      gravity: ToastGravity.CENTER,
      textColor: AppColor.whiteColor,
    );
  }

  //email valid xa ki xaina check garne function lekhne

  static snackBar(String title, String message) {
    Get.snackbar(
      title,
      message,
    );
  }
}
