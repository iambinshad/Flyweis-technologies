import '../controller/iphone_14_fiftyfour_controller.dart';
import 'package:get/get.dart';

class Iphone14FiftyfourBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Iphone14FiftyfourController());
  }
}
