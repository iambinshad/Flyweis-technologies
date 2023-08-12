import '../controller/iphone_14_fiftynine_controller.dart';
import 'package:get/get.dart';

class Iphone14FiftynineBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Iphone14FiftynineController());
  }
}
