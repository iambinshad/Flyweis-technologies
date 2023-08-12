import '../controller/iphone_14_eightythree_controller.dart';
import 'package:get/get.dart';

class Iphone14EightythreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Iphone14EightythreeController());
  }
}
