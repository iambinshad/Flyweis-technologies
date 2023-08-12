import 'controller/iphone_14_121_controller.dart';
import 'models/iphone_14_121_model.dart';
import 'package:e_commerce/core/app_export.dart';
import 'package:e_commerce/widgets/custom_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class Iphone14121Page extends StatelessWidget {
  Iphone14121Controller controller =
      Get.put(Iphone14121Controller(Iphone14121Model().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: SingleChildScrollView(

          child: Container(
            width: double.maxFinite,
            decoration: AppDecoration.fillWhiteA700,
            child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Container(
                padding: getPadding(top: 9, bottom: 39),
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                  CustomButton(
                      height: getVerticalSize(52),
                      text: "lbl_support".tr,
                      variant: ButtonVariant.FillWhiteA700,
                      shape: ButtonShape.Square,
                      padding: ButtonPadding.PaddingAll13,
                      onTap: () {
                        // onTapSupport();
                      }),
                  Padding(
                      padding: getPadding(top: 4),
                      child: Divider(
                          height: getVerticalSize(1),
                          thickness: getVerticalSize(1),
                          color: ColorConstant.teal400)),
                  Container(
                      width: double.maxFinite,
                      margin: getMargin(top: 5),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                width: getHorizontalSize(97),
                                padding: getPadding(
                                    left: 16, top: 13, right: 16, bottom: 13),
                                decoration: AppDecoration.txtOutlineGreen9001,
                                child: Text("lbl_products".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsMedium14Gray90002
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.14)))),
                            Container(
                                width: getHorizontalSize(98),
                                padding: getPadding(
                                    left: 20, top: 14, right: 20, bottom: 14),
                                decoration: AppDecoration.txtFillWhiteA700,
                                child: Text("lbl_delivery".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsMedium14Gray90002
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.14)))),
                            Container(
                                width: getHorizontalSize(97),
                                padding: getPadding(
                                    left: 29, top: 13, right: 29, bottom: 13),
                                decoration: AppDecoration.txtFillWhiteA700,
                                child: Text("lbl_farm".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsMedium14Gray90002
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.14)))),
                            Container(
                                width: getHorizontalSize(98),
                                padding: getPadding(
                                    left: 30, top: 13, right: 34, bottom: 13),
                                decoration: AppDecoration.txtFillWhiteA700,
                                child: Text("lbl_app".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsMedium14Gray90002
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.14))))
                          ])),
                  Container(
                      margin: getMargin(left: 10, top: 25, right: 10),
                      padding: getPadding(left: 15, top: 6, right: 15, bottom: 6),
                      decoration: AppDecoration.fillGray50.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder15),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                width: getHorizontalSize(265),
                                margin: getMargin(top: 3),
                                child: Text("msg_what_are_the_different".tr,
                                    maxLines: null,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsMedium14Gray800
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.28)))),
                            CustomImageView(
                                svgPath: ImageConstant.imgVector36,
                                height: getVerticalSize(5),
                                width: getHorizontalSize(10),
                                margin: getMargin(top: 22, right: 18, bottom: 20))
                          ])),
                  Container(
                      margin: getMargin(left: 10, top: 20, right: 10),
                      padding: getPadding(left: 15, top: 6, right: 15, bottom: 6),
                      decoration: AppDecoration.fillGray50.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder15),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                width: getHorizontalSize(265),
                                margin: getMargin(top: 3),
                                child: Text("msg_what_are_the_different".tr,
                                    maxLines: null,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsMedium14Gray800
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.28)))),
                            CustomImageView(
                                svgPath: ImageConstant.imgVector36,
                                height: getVerticalSize(5),
                                width: getHorizontalSize(10),
                                margin: getMargin(top: 22, right: 18, bottom: 20))
                          ])),
                  Container(
                      margin: getMargin(left: 10, top: 20, right: 10),
                      padding: getPadding(left: 15, top: 6, right: 15, bottom: 6),
                      decoration: AppDecoration.fillGray50.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder15),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                width: getHorizontalSize(265),
                                margin: getMargin(top: 3),
                                child: Text("msg_what_are_the_different".tr,
                                    maxLines: null,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsMedium14Gray800
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.28)))),
                            CustomImageView(
                                svgPath: ImageConstant.imgVector36,
                                height: getVerticalSize(5),
                                width: getHorizontalSize(10),
                                margin: getMargin(top: 22, right: 18, bottom: 20))
                          ])),
                  Container(
                      margin: getMargin(left: 10, top: 20, right: 10),
                      padding: getPadding(left: 15, top: 6, right: 15, bottom: 6),
                      decoration: AppDecoration.fillGray50.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder15),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                width: getHorizontalSize(265),
                                margin: getMargin(top: 3),
                                child: Text("msg_what_are_the_different".tr,
                                    maxLines: null,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsMedium14Gray800
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.28)))),
                            CustomImageView(
                                svgPath: ImageConstant.imgVector36,
                                height: getVerticalSize(5),
                                width: getHorizontalSize(10),
                                margin: getMargin(top: 22, right: 18, bottom: 20))
                          ])),
                  Container(
                      margin: getMargin(left: 10, top: 20, right: 10),
                      padding: getPadding(left: 15, top: 6, right: 15, bottom: 6),
                      decoration: AppDecoration.fillGray50.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder15),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                width: getHorizontalSize(265),
                                margin: getMargin(top: 3),
                                child: Text("msg_what_are_the_different".tr,
                                    maxLines: null,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsMedium14Gray800
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.28)))),
                            CustomImageView(
                                svgPath: ImageConstant.imgVector36,
                                height: getVerticalSize(5),
                                width: getHorizontalSize(10),
                                margin: getMargin(top: 22, right: 18, bottom: 20))
                          ])),
                  Container(
                      margin: getMargin(left: 10, top: 20, right: 10),
                      padding: getPadding(left: 15, top: 6, right: 15, bottom: 6),
                      decoration: AppDecoration.fillGray50.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder15),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                width: getHorizontalSize(265),
                                margin: getMargin(top: 3),
                                child: Text("msg_what_are_the_different".tr,
                                    maxLines: null,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsMedium14Gray800
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.28)))),
                            CustomImageView(
                                svgPath: ImageConstant.imgVector36,
                                height: getVerticalSize(5),
                                width: getHorizontalSize(10),
                                margin: getMargin(top: 22, right: 18, bottom: 20))
                          ])),
                  Container(
                    margin: getMargin(left: 10, top: 20, right: 10, bottom: 5),
                    padding: getPadding(left: 15, top: 6, right: 15, bottom: 6),
                    decoration: AppDecoration.fillGray50.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder15),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              width: getHorizontalSize(265),
                              margin: getMargin(top: 3),
                              child: Text("msg_what_are_the_different".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsMedium14Gray800
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.28)))),
                          CustomImageView(
                              svgPath: ImageConstant.imgVector36,
                              height: getVerticalSize(5),
                              width: getHorizontalSize(10),
                              margin: getMargin(top: 22, right: 18, bottom: 20))
                        ]),
                  ),
                ]),
              ),
            ]),
          ),
        ),
      ),
    );
  }

  onTapSupport() {
    Get.toNamed(
      AppRoutes.iphone14FiftythreeScreen,
    );
  }
}
