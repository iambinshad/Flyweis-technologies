import '../controller/iphone_14_ninety_controller.dart';
import 'package:get/get.dart';

class Iphone14NinetyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Iphone14NinetyController());
  }
}
