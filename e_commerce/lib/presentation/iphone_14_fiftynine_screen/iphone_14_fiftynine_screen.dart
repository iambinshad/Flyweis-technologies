import 'controller/iphone_14_fiftynine_controller.dart';
import 'package:e_commerce/core/app_export.dart';
import 'package:e_commerce/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class Iphone14FiftynineScreen extends GetWidget<Iphone14FiftynineController> {
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
                          margin: getMargin(right: 200),
                          height: getVerticalSize(52),
                          text: "lbl_tracking_order".tr,
                          variant: ButtonVariant.FillWhiteA700,
                          shape: ButtonShape.Square,
                          prefixWidget: Container(
                              margin: getMargin(right: 15),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgArrowleftBlack900)),
                          onTap: () {
                            onTapTrackingorder();
                          }),
                      Padding(
                          padding: getPadding(top: 31),
                          child: Text("msg_order_no_123_456".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMontserratBold20)),
                      Padding(
                          padding: getPadding(left: 22, top: 20, right: 22),
                          child: GestureDetector(
                            onTap: (){
                              onTaporderlocation();
                            },
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                      padding: getPadding(top: 3, bottom: 243),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text("lbl_20_18".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMontserratRegular1167),
                                            Padding(
                                                padding: getPadding(top: 2),
                                                child: Text("lbl_10_00_am".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtMontserratRegular972)),
                                            Padding(
                                                padding: getPadding(top: 80),
                                                child: Text("lbl_20_18".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtMontserratRegular1167)),
                                            Padding(
                                                padding: getPadding(top: 2),
                                                child: Text("lbl_10_00_am".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtMontserratRegular972)),
                                            Padding(
                                                padding: getPadding(top: 100),
                                                child: Text("lbl_21_18".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtMontserratRegular1167)),
                                            Padding(
                                                padding: getPadding(top: 2),
                                                child: Text("lbl_10_00_am".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtMontserratRegular972))
                                          ])),
                                  Spacer(flex: 55),
                                  Container(
                                      height: getVerticalSize(496),
                                      width: getHorizontalSize(29),
                                      margin: getMargin(top: 4, bottom: 15),
                                      child: Stack(
                                          alignment: Alignment.bottomCenter,
                                          children: [
                                            Align(
                                                alignment: Alignment.center,
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.start,
                                                    children: [
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgScrubber,
                                                          height: getVerticalSize(
                                                              472),
                                                          width:
                                                              getHorizontalSize(
                                                                  1)),
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgScrubberGreen900,
                                                          height: getVerticalSize(
                                                              235),
                                                          width:
                                                              getHorizontalSize(
                                                                  1),
                                                          margin: getMargin(
                                                              bottom: 236))
                                                    ])),
                                            CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgContrastWhiteA70029x29,
                                                height: getSize(29),
                                                width: getSize(29),
                                                alignment:
                                                    Alignment.bottomCenter),
                                            Align(
                                                alignment: Alignment.center,
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgSettingsWhiteA700,
                                                          height: getSize(29),
                                                          width: getSize(29)),
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgSettingsWhiteA700,
                                                          height: getSize(29),
                                                          width: getSize(29),
                                                          margin:
                                                              getMargin(top: 87)),
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgContrastWhiteA70029x29,
                                                          height: getSize(29),
                                                          width: getSize(29),
                                                          margin:
                                                              getMargin(top: 87))
                                                    ])),
                                            CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgSettingsWhiteA700,
                                                height: getSize(29),
                                                width: getSize(29),
                                                alignment: Alignment.topCenter)
                                          ])),
                                  Spacer(flex: 44),
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text("lbl_order_signed".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtMontserratMedium1556),
                                        Padding(
                                            padding: getPadding(top: 6),
                                            child: Text("lbl_melbourne_store".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMontserratRegular1167Black900)),
                                        Padding(
                                            padding: getPadding(top: 77),
                                            child: Text("lbl_order_processed".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMontserratMedium1556)),
                                        Padding(
                                            padding: getPadding(top: 7),
                                            child: Text("lbl_melbourne_store".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMontserratRegular1167Black900)),
                                        Padding(
                                            padding: getPadding(top: 78),
                                            child: Text("lbl_shipped".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMontserratMedium1556)),
                                        Padding(
                                            padding: getPadding(top: 6),
                                            child: Text("lbl_melbourne_store".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMontserratRegular1167Black900)),
                                        Padding(
                                            padding: getPadding(top: 78),
                                            child: Text("msg_out_for_delivery".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMontserratMedium1556)),
                                        Padding(
                                            padding: getPadding(top: 7),
                                            child: Text("lbl_sydney_au".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMontserratRegular1167Black900)),
                                        Padding(
                                            padding: getPadding(top: 75),
                                            child: Text("lbl_delivered".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMontserratMedium1556)),
                                        Padding(
                                            padding: getPadding(top: 9),
                                            child: Text("lbl_nsw_sydney_au".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMontserratRegular1167Black900))
                                      ])
                                ]),
                          )),
                      CustomButton(
                          height: getVerticalSize(50),
                          text: "msg_continue_shopping".tr,
                          margin: getMargin(
                              left: 20, top: 30, right: 20, bottom: 5),
                          padding: ButtonPadding.PaddingAll16,
                          fontStyle: ButtonFontStyle.MontserratBold1361Green50)
                    ]))));
  }

  onTapTrackingorder() {
    Get.back(
      // AppRoutes.iphone14FiftyeightScreen,
    );
  }
  onTaporderlocation() {
    Get.toNamed(
      AppRoutes.iphone14SixtyScreen,
    );
  }
}
