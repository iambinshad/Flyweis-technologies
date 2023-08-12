import 'package:e_commerce/core/app_export.dart';import 'package:e_commerce/presentation/iphone_14_eightyfour_screen/models/iphone_14_eightyfour_model.dart';import 'package:flutter/material.dart';class Iphone14EightyfourController extends GetxController {TextEditingController reviewpromptController = TextEditingController();

Rx<Iphone14EightyfourModel> iphone14EightyfourModelObj = Iphone14EightyfourModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); reviewpromptController.dispose(); } 
 }
