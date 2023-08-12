import '../controller/dashboard_1_controller.dart';
import 'package:get/get.dart';

class Dashboard1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Dashboard1Controller());
  }
}
