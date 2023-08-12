import 'dart:developer';
import 'package:e_commerce/controller/services/register_user_service.dart';
import 'package:e_commerce/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommonProvider with ChangeNotifier {
  Future<String?> loginUserProvider(String phone, context) async {
    await ServiceClass().loginUser(phone).then((value) {
      if (value == 'success') {
        Get.toNamed(
          AppRoutes.signUpOtpScreen,
        );
      } else if (value == 'Account not found!') {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("Account Not Found")));
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("Something went wront!")));
      }
    });
  }

  Future<String?> otpProvider(String otp, context) async {
    await ServiceClass().otpService(otp).then((value) {
      log(value.toString());
      if (value.toString() == 'success') {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('Login Successfull'),
          backgroundColor: Colors.green,
        ));
        Get.toNamed(AppRoutes.iphone14117Container1Screen);
      } else if (value.toString() == 'Incorrect Otp') {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text("Incorrect OTP"),
          backgroundColor: Colors.red,
        ));
      }
    });
  }

  Future<void> registerNewUser(
      String fullName, String email, String gender, context) async {
    await ServiceClass()
        .registerEmailService(fullName, email, gender)
        .then((value) {
      if (value.toString() == 'success') {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('Registering Successful'),
          backgroundColor: Colors.green,
        ));
        Get.toNamed(AppRoutes.iphone14117Container1Screen);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text("Something went wrong!"),
          backgroundColor: Colors.red,
        ));
      }
    });
  }
}
