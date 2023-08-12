import '../controller/iphone_14_sixtynine_controller.dart';
import 'package:get/get.dart';

class Iphone14SixtynineBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Iphone14SixtynineController());
  }
}
