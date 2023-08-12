import 'package:e_commerce/widgets/custom_icon_button.dart';

import 'controller/iphone_14_fiftyfive_controller.dart';
import 'package:e_commerce/core/app_export.dart';
import 'package:e_commerce/widgets/custom_button.dart';
import 'package:e_commerce/widgets/custom_checkbox.dart';
import 'package:flutter/material.dart';

class Iphone14FiftyfiveScreen extends GetWidget<Iphone14FiftyfiveController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomButton(
                          margin: getMargin(right: 215),
                          height: getVerticalSize(52),
                          text: "lbl_checkout".tr,
                          variant: ButtonVariant.FillWhiteA700,
                          shape: ButtonShape.Square,
                          prefixWidget: Container(
                              margin: getMargin(right: 15),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgArrowleftBlack900)),
                          onTap: () {
                            onTapCheckout();
                          }),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              height: getVerticalSize(24),
                              width: getHorizontalSize(315),
                              margin: getMargin(top: 9),
                              child: Stack(
                                  alignment: Alignment.centerRight,
                                  children: [
                                    Align(
                                        alignment: Alignment.center,
                                        child: SizedBox(
                                            width: getHorizontalSize(279),
                                            child: Divider(
                                                height: getVerticalSize(1),
                                                thickness: getVerticalSize(1),
                                                color:
                                                    ColorConstant.green900))),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgContrast,
                                        height: getSize(24),
                                        width: getSize(24),
                                        alignment: Alignment.centerRight),
                                    CustomImageView(
                                        svgPath: ImageConstant
                                            .imgContrastWhiteA70024x24,
                                        height: getSize(24),
                                        width: getSize(24),
                                        alignment: Alignment.center),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgSettings,
                                        height: getSize(24),
                                        width: getSize(24),
                                        alignment: Alignment.centerLeft)
                                  ]))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 30, top: 10, right: 24),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                        padding: getPadding(bottom: 1),
                                        child: Text("lbl_address".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsRegular1121)),
                                    Spacer(flex: 53),
                                    Padding(
                                        padding: getPadding(top: 1),
                                        child: Text("lbl_payments".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsRegular1121)),
                                    Spacer(flex: 46),
                                    Padding(
                                        padding: getPadding(top: 1),
                                        child: Text("lbl_summary".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtPoppinsRegular1121))
                                  ]))),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: getPadding(left: 8, top: 24),
                          child: Row(
                            children: [
                              CustomIconButton(
                                  height: 22,
                                  width: 22,
                                  margin: getMargin(right: 10),
                                  padding: IconButtonPadding.PaddingAll4,
                                  child: CustomImageView(
                                      svgPath:
                                          ImageConstant.imgCheckmarkGreen50)),
                              Text(
                                "Billing address is the same as delivery \naddress"
                                    .tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                          padding: getPadding(left: 20, top: 22),
                          child: Text("lbl_street_1".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular1308)),
                      Padding(
                          padding: getPadding(left: 20, top: 10),
                          child: Text("lbl_street_lane".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular1494)),
                      CustomImageView(
                          svgPath: ImageConstant.imgField,
                          height: getVerticalSize(2),
                          width: getHorizontalSize(355),
                          alignment: Alignment.center,
                          margin: getMargin(top: 3, right: 5)),
                      Padding(
                          padding: getPadding(left: 20, top: 39),
                          child: Text("lbl_street_2".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular1308)),
                      Padding(
                          padding: getPadding(left: 20, top: 8),
                          child: Text("lbl_xyz_road".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular1494)),
                      CustomImageView(
                          svgPath: ImageConstant.imgField,
                          height: getVerticalSize(2),
                          width: getHorizontalSize(355),
                          alignment: Alignment.center,
                          margin: getMargin(top: 3, right: 5)),
                      Padding(
                          padding: getPadding(left: 20, top: 40),
                          child: Text("lbl_city".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular1308)),
                      Padding(
                          padding: getPadding(left: 20, top: 7),
                          child: Text("lbl_delhi".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular1494)),
                      CustomImageView(
                          svgPath: ImageConstant.imgField,
                          height: getVerticalSize(2),
                          width: getHorizontalSize(355),
                          alignment: Alignment.center,
                          margin: getMargin(top: 3, right: 5)),
                      Padding(
                          padding: getPadding(left: 25, top: 39, right: 132),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(bottom: 1),
                                    child: Text("lbl_state".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsRegular1308)),
                                Padding(
                                    padding: getPadding(top: 1),
                                    child: Text("lbl_country".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsRegular1308))
                              ])),
                      Padding(
                          padding: getPadding(left: 24, top: 6),
                          child: Row(children: [
                            Text("lbl_delhi2".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsRegular1494),
                            Padding(
                                padding: getPadding(left: 150),
                                child: Text("lbl_india".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsRegular1494))
                          ])),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 20, top: 5, right: 24),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgField,
                                        height: getVerticalSize(1),
                                        width: getHorizontalSize(156)),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgField,
                                        height: getVerticalSize(1),
                                        width: getHorizontalSize(157))
                                  ]))),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: getPadding(left: 8, top: 34),
                          child: Row(
                            children: [
                              CustomIconButton(
                                  height: 22,
                                  width: 22,
                                  margin: getMargin(right: 10),
                                  padding: IconButtonPadding.PaddingAll4,
                                  child: CustomImageView(
                                      svgPath:
                                          ImageConstant.imgCheckmarkGreen50)),
                              Text(
                                "msg_delivery_at_your".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: getPadding(left: 8, top: 24),
                          child: Row(
                            children: [
                              CustomImageView(
                                  svgPath:
                                  // ImageConstant.imgCheckmarkGreen900
                                  ImageConstant.imgCheckmarkGreen900
                              ),
                              SizedBox(width: 18,),
                              // CustomIconButton(
                              //     height: 22,
                              //     width: 22,
                              //     margin: getMargin(right: 10),
                              //     // padding: IconButtonPadding.PaddingAll4,
                              //     child: CustomImageView(
                              //         svgPath:
                              //             // ImageConstant.imgCheckmarkGreen900
                              //             ImageConstant.imgContrastWhiteA70024x24
                              //     ),),
                              Text(
                                "msg_tack_away_from_e_van".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                      ),
                      CustomButton(
                          height: getVerticalSize(48),
                          width: getHorizontalSize(156),
                          text: "lbl_next".tr,
                          margin: getMargin(top: 40, bottom: 5),
                          padding: ButtonPadding.PaddingAll16,
                          fontStyle: ButtonFontStyle.MontserratBold1308,
                          onTap: () {
                            onTapNext();
                          },
                          alignment: Alignment.center)
                    ]))));
  }

  onTapCheckout() {
    Get.toNamed(
      AppRoutes.iphone14FiftyfourScreen,
    );
  }

  onTapNext() {
    Get.toNamed(
      AppRoutes.iphone14FiftysixScreen,
    );
  }
}
