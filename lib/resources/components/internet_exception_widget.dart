import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm_2/resources/colors/app_color.dart';
import 'package:getx_mvvm_2/resources/getX_localization/language.dart';

// class InternetExceptionWidget extends StatefulWidget {
//   const InternetExceptionWidget({super.key});

//   @override
//   State<InternetExceptionWidget> createState() =>
//       _InternetExceptionWidgetState();
// }

// class _InternetExceptionWidgetState extends State<InternetExceptionWidget> {
//   final VoidCallback onPress;

//   const InternetExceptionWidget({Key? key, required this.onPress})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {

// }

class InterNetExceptionWidget extends StatefulWidget {
  final VoidCallback onPress;
  const InterNetExceptionWidget({Key? key, required this.onPress})
      : super(key: key);

  @override
  State<InterNetExceptionWidget> createState() =>
      _InterNetExceptionWidgetState();
}

class _InterNetExceptionWidgetState extends State<InterNetExceptionWidget> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 23),
      child: Column(
        children: [
          SizedBox(
            height: height * .15,
          ),
          const Icon(
            Icons.cloud_off,
            color: AppColor.redColor,
            size: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Center(
                child: Text(
              'internet_exception'.tr,
              textAlign: TextAlign.center,
            )),
          ),
          SizedBox(
            height: height * .15,
          ),
          InkWell(
            onTap: widget.onPress,
            child: Container(
              height: 55,
              width: 190,
              decoration: BoxDecoration(
                  color: AppColor.redColor,
                  borderRadius: BorderRadius.circular(50)),
              child: Center(
                child: Text(
                  'Retry',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
