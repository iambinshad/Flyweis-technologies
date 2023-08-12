import '../controller/iphone_14_sixtytwo_controller.dart';
import 'package:get/get.dart';

class Iphone14SixtytwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Iphone14SixtytwoController());
  }
}
