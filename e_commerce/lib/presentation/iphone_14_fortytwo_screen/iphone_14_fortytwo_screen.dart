import 'controller/iphone_14_fortytwo_controller.dart';
import 'package:e_commerce/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class Iphone14FortytwoScreen extends GetWidget<Iphone14FortytwoController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            top: 107,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: getVerticalSize(
                  300,
                ),
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.img02lottietick01instant2,
                      height: getVerticalSize(
                        300,
                      ),
                      width: getHorizontalSize(
                        390,
                      ),
                      alignment: Alignment.center,
                    ),

                  ],
                ),
              ),
              Container(
                width: getHorizontalSize(
                  260,
                ),
                margin: getMargin(
                  bottom: 5,
                ),
                child: Text(
                  "msg_money_added_to_your".tr,
                  maxLines: null,
                  textAlign: TextAlign.center,
                  style: AppStyle.txtFuturaBTBold24,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
