import 'dart:developer';
import 'package:e_commerce/controller/services/register_user_service.dart';
import 'package:e_commerce/core/api/twillio_configration.dart';
import 'package:e_commerce/presentation/sign_up_otp_screen/sign_up_otp_screen.dart';
import 'package:e_commerce/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class CommonProvider with ChangeNotifier {
  String signUpOtp = '';
  String phoneNumber = '';
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

  Future<String?> signUpProvider(String phone, context) async {
    await ServiceClass().signUpUser(phone, context).then((value) {
      if (value == 'success') {
        Provider.of<CommonProvider>(context, listen: false).phoneNumber = phone;
        log(Provider.of<CommonProvider>(context,listen: false).phoneNumber,name: "Hai");
        Get.toNamed(
          AppRoutes.signupFormScreen,
        );
      } else if (value == 'Already Exist!') {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text("User With This Number Already Exist"),
          backgroundColor: Colors.red,
        ));
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("Something went wront!")));
      }
    });
  }

  Future<String?> loginOtpProvider(String otp, context) async {
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

  Future<String?> signUpOtpProvider(
    String otp,
    context,
  ) async {
    await ServiceClass().otpService(otp).then((value) {
      log(value.toString());
      if (value.toString() == 'success') {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('Sign Up Successfull'),
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
        sendTwilioSMS(
            Provider.of<CommonProvider>(context, listen: false).phoneNumber,
            Provider.of<CommonProvider>(context, listen: false).signUpOtp);
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SignUpOtpScreen(isFromSignUp: true),
            ));
        // Get.toNamed(AppRoutes.iphone14117Container1Screen);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text("Something went wrong!"),
          backgroundColor: Colors.red,
        ));
      }
    });
  }
}
