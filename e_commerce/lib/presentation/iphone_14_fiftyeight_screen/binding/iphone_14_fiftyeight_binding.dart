import '../controller/iphone_14_fiftyeight_controller.dart';
import 'package:get/get.dart';

class Iphone14FiftyeightBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Iphone14FiftyeightController());
  }
}
