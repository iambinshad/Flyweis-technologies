import '../controller/iphone_14_117_container1_controller.dart';
import 'package:get/get.dart';

class Iphone14117Container1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Iphone14117Container1Controller());
  }
}
