import '../controller/sign_up_otp_controller.dart';
import 'package:get/get.dart';

class SignUpOtpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpOtpController());
  }
}
