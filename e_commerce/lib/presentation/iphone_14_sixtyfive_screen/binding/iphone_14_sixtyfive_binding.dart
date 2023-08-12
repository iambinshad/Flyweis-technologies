import '../controller/iphone_14_sixtyfive_controller.dart';
import 'package:get/get.dart';

class Iphone14SixtyfiveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Iphone14SixtyfiveController());
  }
}
