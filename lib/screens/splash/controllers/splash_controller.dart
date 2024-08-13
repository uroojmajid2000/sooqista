import 'dart:async';
import 'package:get/get.dart';
import 'package:sooqista_app/utills/app_routes_name.dart';

class SplashController extends GetxController {
  late Timer splashTimer;

  @override
  void onInit() async {
    splashTimer = Timer(
      const Duration(seconds: 5),
      () {
        Get.offNamed(AppRouteName.ONBOARDING_ROUTE);
      },
    );
    super.onInit();
  }

  @override
  void dispose() {
    splashTimer.cancel();
    super.dispose();
  }
}
