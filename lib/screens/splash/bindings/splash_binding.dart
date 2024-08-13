import 'package:get/get.dart';
import 'package:sooqista_app/screens/splash/controllers/splash_controller.dart';

class SplashBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController());
  }
}