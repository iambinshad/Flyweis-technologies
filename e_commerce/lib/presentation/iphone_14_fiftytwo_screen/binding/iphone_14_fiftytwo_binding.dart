import '../controller/iphone_14_fiftytwo_controller.dart';
import 'package:get/get.dart';

class Iphone14FiftytwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Iphone14FiftytwoController());
  }
}
