import 'package:e_commerce/core/app_export.dart';
import 'package:e_commerce/presentation/sign_up_otp_screen/models/sign_up_otp_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:flutter/material.dart';

class SignUpOtpController extends GetxController with CodeAutoFill {
  Rx<TextEditingController> otpController = TextEditingController().obs;

  Rx<SignUpOtpModel> signUpOtpModelObj = SignUpOtpModel().obs;

  @override
  void codeUpdated() {
    otpController.value.text = code!;
  }

  @override
  void onInit() {
    super.onInit();
    // listenForCode();
  }

  @override
  void onReady() {
    super.onReady();
    Get.toNamed(
      AppRoutes.iphone14117Container1Screen,
    );
  }

  @override
  void onClose() {
    super.onClose();
  }
}
