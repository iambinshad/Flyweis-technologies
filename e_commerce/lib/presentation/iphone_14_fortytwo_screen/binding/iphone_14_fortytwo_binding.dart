import '../controller/iphone_14_fortytwo_controller.dart';
import 'package:get/get.dart';

class Iphone14FortytwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Iphone14FortytwoController());
  }
}
