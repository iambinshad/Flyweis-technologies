import 'controller/iphone_14_eightyeight_controller.dart';
import 'package:e_commerce/core/app_export.dart';
import 'package:e_commerce/widgets/app_bar/appbar_image.dart';
import 'package:e_commerce/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:e_commerce/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class Iphone14EightyeightScreen
    extends GetWidget<Iphone14EightyeightController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(52),
                centerTitle: true,
                title: Container(
                    padding: getPadding(left: 9, top: 12, right: 9, bottom: 12),
                    decoration: AppDecoration.fillWhiteA700,
                    child: Row(children: [
                      AppbarImage(
                          height: getVerticalSize(26),
                          width: getHorizontalSize(25),
                          svgPath: ImageConstant.imgArrowleftBlack900,
                          margin: getMargin(top: 1),
                          onTap: () {
                            onTapArrowleft3();
                          }),
                      AppbarSubtitle1(
                          text: "lbl_about_us".tr,
                          margin: getMargin(left: 16, right: 250, bottom: 1))
                    ])),
                styleType: Style.bgFillWhiteA700),
            body: CustomImageView(
                svgPath: ImageConstant.imgClippathgroupBlack900,
                height: getVerticalSize(710),
                width: getHorizontalSize(350),
                margin: getMargin(top: 8, bottom: 33))));
  }

  onTapArrowleft3() {
    Get.back();
  }
}
