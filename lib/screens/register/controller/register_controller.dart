import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sooqista_app/utills/app_routes_name.dart';

class RegisterController extends GetxController {
  TextEditingController firstName = TextEditingController();
  TextEditingController email_login = TextEditingController();
  RxBool show_password_register = true.obs;
  TextEditingController password = TextEditingController();
  TextEditingController confrim_password = TextEditingController();

  RxBool show_confirm_password_register = true.obs;
  RxString countryCode = "".obs;
  var isAccepted = false.obs;

  void toggleAccepted() {
    isAccepted.value = !isAccepted.value;
  }

  @override
  void onInit() async {
    super.onInit();
  }
}
