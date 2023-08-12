import '../controller/iphone_14_sixtyeight_controller.dart';
import 'package:get/get.dart';

class Iphone14SixtyeightBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Iphone14SixtyeightController());
  }
}
