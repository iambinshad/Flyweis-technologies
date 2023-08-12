import 'package:e_commerce/core/app_export.dart';import 'package:e_commerce/presentation/iphone_14_fiftythree_screen/models/iphone_14_fiftythree_model.dart';import 'package:flutter/material.dart';class Iphone14FiftythreeController extends GetxController {TextEditingController commentController = TextEditingController();

Rx<Iphone14FiftythreeModel> iphone14FiftythreeModelObj = Iphone14FiftythreeModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); commentController.dispose(); } 
 }
