import '../controller/iphone_14_sixtythree_controller.dart';
import 'package:get/get.dart';

class Iphone14SixtythreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Iphone14SixtythreeController());
  }
}
