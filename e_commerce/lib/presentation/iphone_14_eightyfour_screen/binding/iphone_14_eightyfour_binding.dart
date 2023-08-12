import '../controller/iphone_14_eightyfour_controller.dart';
import 'package:get/get.dart';

class Iphone14EightyfourBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Iphone14EightyfourController());
  }
}
