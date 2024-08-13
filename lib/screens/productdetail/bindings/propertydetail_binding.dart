import 'package:get/get.dart';
import 'package:sooqista_app/screens/productdetail/controller/propertydetails_controller.dart';

class PropertydetailBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => PropertyDetailController());
  }
}