import '../controller/iphone_14_116_controller.dart';
import 'package:get/get.dart';

class Iphone14116Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Iphone14116Controller());
  }
}
