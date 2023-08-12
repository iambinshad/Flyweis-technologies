import '../controller/iphone_14_sixtyseven_controller.dart';
import 'package:get/get.dart';

class Iphone14SixtysevenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Iphone14SixtysevenController());
  }
}
