import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:e_commerce/core/api/endpoints.dart';
import 'package:e_commerce/core/api/twillio_configration.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class ServiceClass {
  Dio dio = Dio();
  FlutterSecureStorage storage = FlutterSecureStorage();
  Future<String?> loginUser(String phone) async {
    String path = ApiConfigration().baseUrl + ApiConfigration().userLogin;
    final rawData = {"phone": phone};
    try {
      Response response = await dio.post(path, data: rawData);
      log(response.statusCode.toString());
      if (response.statusCode == 201) {
        String userId = response.data['Id'];
        String userOtp = response.data['otp'];
         sendTwilioSMS(phone,userOtp);
        await storage.write(key: 'currentUserId', value: userId);
        return 'success';
      }
    } on DioException catch (e) {
      log(e.message.toString(), name: 'some');
      if (e.message.toString() ==
          'The request returned an invalid status code of 500.') {
        return 'Account not found!';
      }
    }
  }
  Future<String?> otpService(String otp) async {
        final currentUserId = await storage.read(key: 'currentUserId');

    String path = ApiConfigration().baseUrl + ApiConfigration().userLoginOtp+currentUserId.toString();
    final rawData = {"otp": otp};
    try {
      Response response = await dio.post(path, data: rawData);
      log(response.statusCode.toString());
      if (response.statusCode == 200) {
        String token = response.data['Token'];
        // String userOtp = response.data['otp'];
        print(token);
        await storage.write(key: 'userToken', value: token);
        return 'success';
      }
    } on DioException catch (e) {
      log(e.message.toString(), name: 'some');
      if (e.message.toString() ==
          'The request returned an invalid status code of 400.') {
        return 'Incorrect Otp';
      }
    }
  }

  Future<String?> registerEmailService(
    String fullName,
    String email,
    String gender,
  ) async {
    final storageValue = await storage.read(key: 'currentUserId');
    log(storageValue.toString());
    String path = ApiConfigration().baseUrl +
        ApiConfigration().registerEmail +
        storageValue.toString();
    final rawData = {"name": fullName, "email": email, "gender": gender};
    try {
      log(rawData.toString());
      Response response = await dio.put(path, data: rawData);
      if (response.statusMessage == 'OK') {
        return 'success';
      }
    } on DioException catch (e) {
      log(e.message.toString(), name: 'some2');

      return e.message.toString();
    }
  }
}
