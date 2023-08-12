import '../controller/iphone_14_fiftysix_controller.dart';
import 'package:get/get.dart';

class Iphone14FiftysixBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Iphone14FiftysixController());
  }
}
