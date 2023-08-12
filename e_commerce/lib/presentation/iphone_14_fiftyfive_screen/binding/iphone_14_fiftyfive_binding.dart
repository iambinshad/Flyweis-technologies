import '../controller/iphone_14_fiftyfive_controller.dart';
import 'package:get/get.dart';

class Iphone14FiftyfiveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Iphone14FiftyfiveController());
  }
}
