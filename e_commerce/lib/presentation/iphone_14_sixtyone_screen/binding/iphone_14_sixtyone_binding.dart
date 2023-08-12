import '../controller/iphone_14_sixtyone_controller.dart';
import 'package:get/get.dart';

class Iphone14SixtyoneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Iphone14SixtyoneController());
  }
}
