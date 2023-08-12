import '../controller/iphone_14_eightyfive_controller.dart';
import 'package:get/get.dart';

class Iphone14EightyfiveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Iphone14EightyfiveController());
  }
}
