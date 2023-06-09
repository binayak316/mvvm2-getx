import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:getx_mvvm_2/resources/components/round_button.dart";
import "package:getx_mvvm_2/resources/components/text_form_field.dart";
import "package:getx_mvvm_2/utils/utils.dart";

import "../../view_model/controller/login_view_model.dart";

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final loginVM = Get.put(LoginViewModel());

  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text('login'.tr),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Form(
              key: _formkey,
              child: Column(
                children: [
                  // CustomTextFormField(
                  //   controller: loginVM.emailController.value,
                  //   focusNode: loginVM.emailFocusNode.value,
                  //   hintText: 'email_hint'.tr,
                  //   validator: (value) {
                  //     if (value!.isEmpty) {
                  //       Utils.snackBar('Email', 'Please Enter Email');
                  //     }
                  //   },
                  //   onFieldSubmitted: (value) {
                  //     Utils.fieldFocusChange(
                  //         context,
                  //         loginVM.emailFocusNode.value,
                  //         loginVM.passwordFocusNode.value);
                  //   },
                  // ),

                  TextFormField(
                    // autofocus: true,
                    controller: loginVM.emailController.value,
                    focusNode: loginVM.emailFocusNode.value,
                    validator: (value) {
                      if (value!.isEmpty) {
                        Utils.snackBar('Email', 'Please Enter Email');
                      }
                    },
                    onFieldSubmitted: (value) {
                      Utils.fieldFocusChange(
                          context,
                          loginVM.emailFocusNode.value,
                          loginVM.passwordFocusNode.value);
                    },
                    decoration: InputDecoration(
                      hintText: 'email_hint'.tr,
                      border: const OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  // CustomTextFormField(
                  //   controller: loginVM.passwordController.value,
                  //   focusNode: loginVM.passwordFocusNode.value,
                  //   hintText: 'password_hint'.tr,
                  //   // obscuringCharacter: '*',
                  //   obscureText: true,
                  //   validator: (value) {
                  //     if (value!.isEmpty) {
                  //       Utils.snackBar('Email', 'password_blank'.tr);
                  //     }
                  //   },
                  // ),
                  TextFormField(
                    // autofocus: true,
                    controller: loginVM.passwordController.value,
                    focusNode: loginVM.passwordFocusNode.value,
                    obscureText: true,
                    obscuringCharacter: '*',
                    validator: (value) {
                      if (value!.isEmpty) {
                        Utils.snackBar('Password', 'Please Enter Password');
                      }
                    },
                    decoration: InputDecoration(
                        hintText: 'password_hint'.tr,
                        border: const OutlineInputBorder()),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Obx(
              () => RoundButton(
                height: 40,
                width: 80,
                loading: loginVM.loading.value,
                title: 'login'.tr,
                onPress: () {
                  print('login Button is clicked');
                  if (_formkey.currentState!.validate()) {
                    loginVM.loginApi();
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
