import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:e_commerce/core/api/endpoints.dart';
import 'package:e_commerce/presentation/iphone_14_117_container_page/controller/provider.dart';
import 'package:e_commerce/presentation/iphone_14_117_container_page/models/all_category_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/state_manager.dart';
import 'package:provider/provider.dart';
import '../../../routes/app_routes.dart';

class HomeServiceClass {
  Dio dio = Dio();
  FlutterSecureStorage storage = FlutterSecureStorage();

  Future<void> getAllCategoryService(context) async {
    String path = ApiConfigration().baseUrl + ApiConfigration().getAllCategory;
    try {
      Response response = await dio.get(path);

      Provider.of<HomeProvider>(context, listen: false).categories =
          (response.data['categories'] as List)
              .map((categoryJson) => AllCategoryModel.fromJson(categoryJson))
              .toList();
    } on DioException catch (e) {
      log(e.message.toString());
    }
  }

  Future<void> getCategorisedCategoryList(context) async {
    String path = ApiConfigration().baseUrl + ApiConfigration().getAllCategory;
    try {
      Response response = await dio.get(path);

      Provider.of<HomeProvider>(context, listen: false).categories =
          (response.data['categories'] as List)
              .map((categoryJson) => AllCategoryModel.fromJson(categoryJson))
              .toList();
    } on DioException catch (e) {
      log(e.message.toString());
    }
  }

  Future<void> addProductToCart() async {
    String path = ApiConfigration().baseUrl +
        ApiConfigration().addProductToCart +
        "6495940dce367d71c08a5651";
    final currentUserId = await storage.read(key: 'currentUserId');
    final token = await storage.read(key: 'userToken');

    final rawData = {"user": currentUserId};
    try {
      Response response = await dio.post(path,
          data: rawData,
          options: Options(headers: {"authorization": "Bearer $token"}));
      if (response.statusCode == 200) {
        log('Success');
        Get.toNamed(
          AppRoutes.iphone14FiftyfourScreen,
        );
      }
    } on DioException catch (e) {
      log(e.message.toString());
    }
  }

  Future<void> applyCouponService(String coupon,context) async {
    String path = ApiConfigration().baseUrl +
        ApiConfigration().applyCoupon;
    final token = await storage.read(key: 'userToken');
    final rawData = {"couponCode": coupon};
    try {
      Response response = await dio.put(path,
          data: rawData,
          options: Options(headers: {"authorization": "Bearer $token"}));
      if (response.statusCode == 200) {
        log('Success');
        Navigator.pop(context);
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Coupon Applied"),backgroundColor: Colors.green,));
      }
    } on DioException catch (e) {
      log(e.message.toString());
    }
  }
}
