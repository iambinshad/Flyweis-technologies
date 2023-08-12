import '../controller/signup_form_controller.dart';
import 'package:get/get.dart';

class SignupFormBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignupFormController());
  }
}
