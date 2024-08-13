import 'package:get/get.dart';
import 'package:sooqista_app/screens/customer_details/controller/customerdetails_controller.dart';

class CustomerdetailsBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => CustomerdetailsController());
  }
}