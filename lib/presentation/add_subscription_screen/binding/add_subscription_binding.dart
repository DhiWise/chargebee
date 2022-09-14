import '../controller/add_subscription_controller.dart';
import 'package:get/get.dart';

class AddSubscriptionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddSubscriptionController());
  }
}
