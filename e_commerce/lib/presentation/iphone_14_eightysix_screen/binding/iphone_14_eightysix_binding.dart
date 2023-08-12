import '../controller/iphone_14_eightysix_controller.dart';
import 'package:get/get.dart';

class Iphone14EightysixBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Iphone14EightysixController());
  }
}
