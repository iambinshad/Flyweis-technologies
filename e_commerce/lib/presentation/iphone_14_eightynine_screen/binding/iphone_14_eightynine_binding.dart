import '../controller/iphone_14_eightynine_controller.dart';
import 'package:get/get.dart';

class Iphone14EightynineBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Iphone14EightynineController());
  }
}
