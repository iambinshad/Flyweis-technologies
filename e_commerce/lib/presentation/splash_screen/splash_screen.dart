import 'controller/splash_controller.dart';
import 'package:e_commerce/core/app_export.dart';
import 'package:flutter/material.dart';

class SplashScreen extends GetWidget<SplashController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                  svgPath: ImageConstant.imgGroup48095631,
                  height: getVerticalSize(127),
                  width: getHorizontalSize(123),
                  margin: getMargin(bottom: 5))
            ],
          ),
        ),
      ),
    );
  }
}
