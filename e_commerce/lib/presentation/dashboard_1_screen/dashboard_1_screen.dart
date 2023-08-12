import 'controller/dashboard_1_controller.dart';
import 'package:e_commerce/core/app_export.dart';
import 'package:e_commerce/widgets/custom_floating_button.dart';
import 'package:flutter/material.dart';

class Dashboard1Screen extends GetWidget<Dashboard1Controller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.green900,
      body: SingleChildScrollView(

        child: Container(
            height: getVerticalSize(859),
            width: double.maxFinite,
            child: Stack(alignment: Alignment.topRight, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgGroup48095658,
                  height: getVerticalSize(140),
                  width: getHorizontalSize(104),
                  alignment: Alignment.topRight),
              CustomImageView(
                  imagePath: ImageConstant.imgGroup48095659,
                  height: getVerticalSize(108),
                  width: getHorizontalSize(70),
                  alignment: Alignment.topRight,
                  margin: getMargin(top: 158)),
              CustomImageView(
                  imagePath: ImageConstant.imgGroup48095659,
                  height: getVerticalSize(108),
                  width: getHorizontalSize(124),
                  alignment: Alignment.bottomRight,
                  margin: getMargin(bottom: 323)),
              CustomImageView(
                  svgPath: ImageConstant.imgGroup48095665,
                  height: getVerticalSize(108),
                  width: getHorizontalSize(140),
                  alignment: Alignment.bottomRight,
                  margin: getMargin(right: 33, bottom: 137)),
              CustomImageView(
                  imagePath: ImageConstant.imgGroup48095661,
                  height: getVerticalSize(108),
                  width: getHorizontalSize(80),
                  alignment: Alignment.bottomLeft,
                  margin: getMargin(bottom: 246)),
              CustomImageView(
                  imagePath: ImageConstant.imgGroup48095662,
                  height: getVerticalSize(164),
                  width: getHorizontalSize(92),
                  alignment: Alignment.topLeft,
                  margin: getMargin(top: 279)),
              CustomImageView(
                  imagePath: ImageConstant.imgGroup48095663,
                  height: getVerticalSize(333),
                  width: getHorizontalSize(187),
                  alignment: Alignment.topCenter),
              CustomImageView(
                  imagePath: ImageConstant.imgGroup48095661,
                  height: getVerticalSize(108),
                  width: getHorizontalSize(111),
                  alignment: Alignment.topLeft,
                  margin: getMargin(top: 124)),
              CustomImageView(
                  svgPath: ImageConstant.imgAirplaneWhiteA700,
                  height: getVerticalSize(31),
                  width: getHorizontalSize(50),
                  alignment: Alignment.topLeft,
                  margin: getMargin(left: 20, top: 20)),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                      padding:
                          getPadding(left: 20, top: 15, right: 20, bottom: 15),
                      decoration: AppDecoration.outlineBlack9003f.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderTL30),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                height: getVerticalSize(3),
                                width: getHorizontalSize(108),
                                child: Stack(
                                  alignment: Alignment.centerLeft,
                                  children: [
                                    Align(
                                      alignment: Alignment.center,
                                      child: SizedBox(
                                        width: getHorizontalSize(108),
                                        child: Divider(
                                            height: getVerticalSize(3),
                                            thickness: getVerticalSize(3),
                                            color: ColorConstant.gray90033),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                                        height: getVerticalSize(3),
                                        width: getHorizontalSize(32),
                                        decoration: BoxDecoration(
                                          color: ColorConstant.green900,
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(1),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                                padding: getPadding(top: 60),
                                child: Text("lbl_dairy_products".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsBold20)),
                            Container(
                                width: getHorizontalSize(294),
                                margin:
                                    getMargin(top: 9, right: 55, bottom: 22),
                                child: Text("msg_find_your_favourite".tr,
                                    maxLines: null,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsRegular16))
                          ]))),
              Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                      width: getHorizontalSize(250),
                      margin: getMargin(left: 40, bottom: 318),
                      child: Text("msg_fresh_and_authentic_organic".tr,
                          maxLines: null,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsExtraBold24))),
              Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                      width: getHorizontalSize(169),
                      margin: getMargin(left: 40, bottom: 241),
                      child: Text("msg_delivery_daily_at".tr,
                          maxLines: null,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsMedium16))),
              CustomImageView(
                  imagePath: ImageConstant.img114daf6081f60,
                  height: getVerticalSize(346),
                  width: getHorizontalSize(306),
                  alignment: Alignment.topLeft,
                  margin: getMargin(top: 70))
            ])),
      ),
      // floatingActionButton: CustomFloatingButton(
      //   height: 60,
      //   width: 60,
      //   child: CustomImageView(
      //     svgPath: ImageConstant.imgArrowright,
      //     height: getVerticalSize(30.0),
      //     width: getHorizontalSize(30.0),
      //   ),
      // ),
    );
  }
}
