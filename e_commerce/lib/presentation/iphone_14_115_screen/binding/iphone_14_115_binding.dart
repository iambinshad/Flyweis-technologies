import '../controller/iphone_14_115_controller.dart';
import 'package:get/get.dart';

class Iphone14115Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Iphone14115Controller());
  }
}
