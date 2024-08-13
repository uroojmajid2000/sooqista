import 'package:get/get.dart';
import 'package:sooqista_app/screens/bottom_navigation/controllers/bottom_navigation_controller.dart';

class BottomNavigationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BottomNavgationController());
  }
}
