import 'controller/iphone_14_fiftyseven_controller.dart';
import 'package:e_commerce/core/app_export.dart';
import 'package:e_commerce/widgets/custom_button.dart';
import 'package:e_commerce/widgets/custom_checkbox.dart';
import 'package:e_commerce/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class Iphone14FiftysevenScreen extends GetWidget<Iphone14FiftysevenController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomButton(
                          margin: getMargin(right: 215),
                          height: getVerticalSize(52),
                          text: "lbl_summary".tr,
                          variant: ButtonVariant.FillWhiteA700,
                          shape: ButtonShape.Square,
                          prefixWidget: Container(
                              margin: getMargin(right: 15),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgArrowleftBlack900)),
                          onTap: () {
                            onTapSummary();
                          }),
                      Container(
                          height: getVerticalSize(24),
                          width: getHorizontalSize(316),
                          margin: getMargin(top: 9),
                          child:
                              Stack(alignment: Alignment.centerLeft, children: [
                            Align(
                                alignment: Alignment.center,
                                child: SizedBox(
                                    width: getHorizontalSize(279),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: ColorConstant.green900))),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: SizedBox(
                                    width: getHorizontalSize(161),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: ColorConstant.green800,
                                        indent: getHorizontalSize(20)))),
                            CustomImageView(
                                svgPath: ImageConstant.imgSettings,
                                height: getSize(24),
                                width: getSize(24),
                                alignment: Alignment.centerRight),
                            CustomImageView(
                                svgPath: ImageConstant.imgSettings,
                                height: getSize(24),
                                width: getSize(24),
                                alignment: Alignment.center),
                            CustomImageView(
                                svgPath: ImageConstant.imgContrastWhiteA700,
                                height: getSize(24),
                                width: getSize(24),
                                alignment: Alignment.centerLeft)
                          ])),
                      Padding(
                          padding: getPadding(left: 30, top: 10, right: 24),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                    padding: getPadding(bottom: 1),
                                    child: Text("lbl_address".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsRegular1121)),
                                Spacer(flex: 53),
                                Padding(
                                    padding: getPadding(top: 1),
                                    child: Text("lbl_payments".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsRegular1121)),
                                Spacer(flex: 46),
                                Padding(
                                    padding: getPadding(top: 1),
                                    child: Text("lbl_summary".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsRegular1121))
                              ])),
                      Container(
                        height: getVerticalSize(122),
                        width: getHorizontalSize(350),
                        margin: getMargin(top: 29),
                        child:
                            Stack(alignment: Alignment.centerLeft, children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                border:
                                    Border.all(color: Colors.green.shade800),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: getPadding(left: 10),
                              child: Row(children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgVector96x78,
                                    height: getVerticalSize(96),
                                    width: getHorizontalSize(78),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(3))),
                                Padding(
                                  padding:
                                      getPadding(left: 5, top: 20, bottom: 6),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text("msg_nescafe_coffee_black".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtPoppinsRegular147),
                                        Padding(
                                            padding: getPadding(top: 9),
                                            child: Text("lbl_565_0".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsRegular147)),
                                        Padding(
                                            padding: getPadding(top: 5),
                                            child: Text("lbl_size_l".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsRegular147Gray600))
                                      ]),
                                ),
                              ]),
                            ),
                          ),
                        ]),
                      ),
                      SizedBox(
                        height: 55,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          width: getHorizontalSize(331),
                          child: Divider(
                              height: getVerticalSize(2),
                              thickness: getVerticalSize(2),
                              color: ColorConstant.green900),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: getPadding(left: 28, top: 14),
                          child: Row(
                            children: [
                              Text(
                                "Shipping Address".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: TextStyle(fontWeight: FontWeight.bold,
                                fontSize: 18),
                              ),
                             CustomIconButton(
                                 height: 22,
                                 width: 22,
                                 margin: getMargin(left: 160),
                                 padding: IconButtonPadding.PaddingAll4,
                                 child: CustomImageView(
                                     svgPath:
                                     ImageConstant.imgCheckmarkGreen50)),
                            ],
                          ),
                        ),
                      ),

                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 28, top: 14),
                              child: Text("msg_12_bay_brook_sharps".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtMontserratRegular147))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 28, top: 5),
                              child: Text("msg_melbourne_australia".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtMontserratRegular147))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 28, top: 20),
                              child: Text("lbl_change".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsRegular1286),),),
                      SizedBox(height: 20,),
                      Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                              width: getHorizontalSize(331),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(2),
                                  color: ColorConstant.green900))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 28, top: 22),
                              child: Text("lbl_payment".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtMontserratBold1654))),
                      Padding(
                          padding: getPadding(left: 28, top: 16, right: 30),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(top: 3),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgVolumeDeepOrangeA40039x55,
                                              height: getVerticalSize(39),
                                              width: getHorizontalSize(55)),
                                          Padding(
                                              padding: getPadding(
                                                  left: 18, bottom: 4),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text("lbl_master_card".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtMontserratRegular1102),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 2),
                                                        child: Text(
                                                            "msg_543".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtMontserratRegular147))
                                                  ]))
                                        ])),
                                CustomIconButton(
                                    height: 22,
                                    width: 22,
                                    margin: getMargin(bottom: 20),
                                    padding: IconButtonPadding.PaddingAll4,
                                    child: CustomImageView(
                                        svgPath:
                                            ImageConstant.imgCheckmarkGreen50))
                              ])),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: GestureDetector(
                              onTap: () {
                                onTapTxtChangeone();
                              },
                              child: Padding(
                                  padding: getPadding(left: 29, top: 25),
                                  child: Text("lbl_change".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsRegular1286)))),
                      CustomButton(
                          height: getVerticalSize(48),
                          width: getHorizontalSize(156),
                          text: "lbl_pay".tr,
                          margin: getMargin(top: 48, bottom: 5),
                          padding: ButtonPadding.PaddingAll16,
                          fontStyle: ButtonFontStyle.MontserratBold1308,
                          onTap: () {
                            onTapPay();
                          })
                    ]))));
  }

  onTapSummary() {
    Get.toNamed(
      AppRoutes.iphone14FiftysixScreen,
    );
  }

  onTapTxtChangeone() {
    Get.toNamed(
      AppRoutes.iphone14SixtythreeScreen,
    );
  }

  onTapPay() {
    Get.toNamed(
      AppRoutes.iphone14FiftyeightScreen,
    );
  }
}
