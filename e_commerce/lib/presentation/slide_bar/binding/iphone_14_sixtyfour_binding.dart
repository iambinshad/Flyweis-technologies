import '../controller/iphone_14_sixtyfour_controller.dart';
import 'package:get/get.dart';

class Iphone14SixtyfourBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Iphone14SixtyfourController());
  }
}
