import '../controller/iphone_14_114_controller.dart';
import 'package:get/get.dart';

class Iphone14114Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Iphone14114Controller());
  }
}
