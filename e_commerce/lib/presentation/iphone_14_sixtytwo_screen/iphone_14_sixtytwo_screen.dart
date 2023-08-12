import 'controller/iphone_14_sixtytwo_controller.dart';
import 'package:e_commerce/core/app_export.dart';
import 'package:e_commerce/widgets/custom_button.dart';
import 'package:e_commerce/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';

class Iphone14SixtytwoScreen extends GetWidget<Iphone14SixtytwoController> {
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
                      Container(
                          height: getVerticalSize(53),
                          width: getHorizontalSize(389),
                          child: Stack(alignment: Alignment.center, children: [
                            CustomButton(
                                margin: getMargin(right: 180),
                                height: getVerticalSize(52),
                                width: getHorizontalSize(389),
                                text: "lbl_manage_payment".tr,
                                variant: ButtonVariant.FillWhiteA700,
                                shape: ButtonShape.Square,
                                prefixWidget: Container(
                                    margin: getMargin(right: 15),
                                    child: CustomImageView(
                                        svgPath: ImageConstant
                                            .imgArrowleftBlack900)),
                                onTap: () {
                                  onTapManagepayment();
                                },
                                alignment: Alignment.center)
                          ])),
                      Container(
                        height: getVerticalSize(334),
                        width: getHorizontalSize(349),
                        margin: getMargin(top: 10),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.green.shade200),
                            borderRadius: BorderRadius.circular(10)),
                        child: Stack(alignment: Alignment.topCenter, children: [
                          Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                  padding: getPadding(top: 37),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding:
                                                getPadding(left: 15, right: 14),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(
                                                          top: 10, bottom: 6),
                                                      child: Obx(() =>
                                                          CustomRadioButton(
                                                              text: "lbl_paytm"
                                                                  .tr,
                                                              iconSize:
                                                                  getHorizontalSize(
                                                                      18),
                                                              value: "lbl_paytm"
                                                                  .tr,
                                                              groupValue:
                                                                  controller
                                                                      .radioGroup
                                                                      .value,
                                                              margin: getMargin(
                                                                  top: 10,
                                                                  bottom: 6),
                                                              fontStyle:
                                                                  RadioFontStyle
                                                                      .PoppinsMedium1462,
                                                              onChange:
                                                                  (value) {
                                                                controller
                                                                    .radioGroup
                                                                    .value = value;
                                                              }))),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgNopathcopy58,
                                                      height: getSize(40),
                                                      width: getSize(40))
                                                ])),
                                        Padding(
                                            padding: getPadding(top: 31),
                                            child: Divider(
                                                height: getVerticalSize(1),
                                                thickness: getVerticalSize(1),
                                                color: ColorConstant.green900)),
                                        Padding(
                                            padding: getPadding(
                                                left: 15, top: 40, right: 15),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(
                                                          top: 8, bottom: 8),
                                                      child: Obx(() =>
                                                          CustomRadioButton(
                                                              text:
                                                                  "lbl_mobiwik"
                                                                      .tr,
                                                              iconSize:
                                                                  getHorizontalSize(
                                                                      18),
                                                              value:
                                                                  "lbl_mobiwik"
                                                                      .tr,
                                                              groupValue:
                                                                  controller
                                                                      .radioGroup1
                                                                      .value,
                                                              margin: getMargin(
                                                                  top: 8,
                                                                  bottom: 8),
                                                              fontStyle:
                                                                  RadioFontStyle
                                                                      .PoppinsMedium1462,
                                                              onChange:
                                                                  (value) {
                                                                controller
                                                                    .radioGroup1
                                                                    .value = value;
                                                              }))),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgNopathcopy59,
                                                      height: getSize(39),
                                                      width: getSize(39))
                                                ]))
                                      ]))),
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                  padding: getPadding(bottom: 109),
                                  child: SizedBox(
                                      width: getHorizontalSize(348),
                                      child: Divider(
                                          height: getVerticalSize(1),
                                          thickness: getVerticalSize(1),
                                          color: ColorConstant.green900)))),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding: getPadding(
                                  left: 16, top: 256, right: 20, bottom: 42),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                      padding: getPadding(top: 0, bottom: 1),
                                      child: Obx(() => CustomRadioButton(
                                          text: "lbl_amazon_pay".tr,
                                          iconSize: getHorizontalSize(18),
                                          value: "lbl_amazon_pay".tr,
                                          groupValue:
                                              controller.radioGroup2.value,
                                          margin: getMargin(top: 11, bottom: 1),
                                          fontStyle:
                                              RadioFontStyle.PoppinsMedium1462,
                                          onChange: (value) {
                                            controller.radioGroup2.value =
                                                value;
                                          }))),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgNopathcopy60,
                                      height: getSize(35),
                                      width: getSize(35))
                                ],
                              ),
                            ),
                          ),
                        ]),
                      ),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text("lbl_upi".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium1462)),
                      Container(
                          height: getVerticalSize(99),
                          width: getHorizontalSize(349),
                          margin: getMargin(top: 22),
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.green.shade200),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                    )),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Padding(
                                        padding: getPadding(bottom: 2),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Card(
                                                  clipBehavior: Clip.antiAlias,
                                                  elevation: 0,
                                                  margin: getMargin(
                                                      top: 26, bottom: 25),
                                                  color:
                                                      ColorConstant.whiteA700,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder10),
                                                  child: Container(
                                                      height: getSize(18),
                                                      width: getSize(18),
                                                      decoration: AppDecoration
                                                          .fillWhiteA700
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder10),
                                                      child: Stack(children: [
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgRefresh,
                                                            height: getSize(17),
                                                            width: getSize(17),
                                                            alignment: Alignment
                                                                .center)
                                                      ]))),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 33,
                                                      top: 15,
                                                      bottom: 11),
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                            "lbl_add_new_upi_id"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtPoppinsMedium1462Black900),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 4),
                                                            child: Text(
                                                                "msg_pay_using_supported"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtPoppinsRegular1097))
                                                      ])),
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgImages,
                                                  height: getSize(70),
                                                  width: getSize(70),
                                                  margin: getMargin(left: 41))
                                            ])))
                              ])),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 28, top: 20),
                              child: Text("msg_net_banking_cards".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsMedium1462))),
                      Container(
                          height: getVerticalSize(148),
                          width: getHorizontalSize(349),
                          margin: getMargin(top: 1, bottom: 5),
                          child: Stack(alignment: Alignment.center, children: [
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.green.shade200),
                                    borderRadius:
                                    BorderRadius.circular(10)),

                              ),
                            ),
                            Align(
                                alignment: Alignment.center,
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding: getPadding(left: 15),
                                          child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Card(
                                                    clipBehavior:
                                                        Clip.antiAlias,
                                                    elevation: 0,
                                                    margin: getMargin(
                                                        top: 9, bottom: 12),
                                                    color:
                                                        ColorConstant.whiteA700,
                                                    shape: RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder10),
                                                    child: Container(
                                                        height: getSize(18),
                                                        width: getSize(18),
                                                        decoration: AppDecoration
                                                            .fillWhiteA700
                                                            .copyWith(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .roundedBorder10),
                                                        child: Stack(children: [
                                                          CustomImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgRefresh,
                                                              height:
                                                                  getSize(17),
                                                              width:
                                                                  getSize(17),
                                                              alignment:
                                                                  Alignment
                                                                      .center)
                                                        ]))),
                                                Padding(
                                                    padding:
                                                        getPadding(left: 33),
                                                    child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                              "lbl_net_banking"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtPoppinsMedium1462Black900),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 1),
                                                              child: Text(
                                                                  "lbl_choose_bank"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtPoppinsRegular1097))
                                                        ]))
                                              ])),
                                      Padding(
                                          padding: getPadding(top: 15),
                                          child: Divider(
                                              height: getVerticalSize(1),
                                              thickness: getVerticalSize(1),
                                              color: ColorConstant.green900)),
                                      Padding(
                                          padding:
                                              getPadding(left: 15, top: 13),
                                          child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                    height: getSize(18),
                                                    width: getSize(18),
                                                    margin: getMargin(
                                                        top: 11, bottom: 14),
                                                    child: Stack(
                                                        alignment:
                                                            Alignment.center,
                                                        children: [
                                                          Align(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              child: Card(
                                                                  clipBehavior: Clip
                                                                      .antiAlias,
                                                                  elevation: 0,
                                                                  margin:
                                                                      EdgeInsets
                                                                          .all(
                                                                              0),
                                                                  color: ColorConstant
                                                                      .whiteA700,
                                                                  shape: RoundedRectangleBorder(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .roundedBorder10),
                                                                  child: Container(
                                                                      height: getSize(18),
                                                                      width: getSize(18),
                                                                      decoration: AppDecoration.fillWhiteA700.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
                                                                      child: Stack(children: [
                                                                        CustomImageView(
                                                                            svgPath:
                                                                                ImageConstant.imgRefresh,
                                                                            height: getSize(17),
                                                                            width: getSize(17),
                                                                            alignment: Alignment.center)
                                                                      ])))),
                                                          CustomImageView(
                                                              svgPath: ImageConstant
                                                                  .imgCloseGreen900,
                                                              height:
                                                                  getSize(12),
                                                              width:
                                                                  getSize(12),
                                                              alignment:
                                                                  Alignment
                                                                      .center)
                                                        ])),
                                                Padding(
                                                    padding:
                                                        getPadding(left: 33),
                                                    child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                              "msg_credit_debit_cards"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtPoppinsMedium1462Black900),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 4),
                                                              child: Text(
                                                                  "msg_add_new_card_for"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtPoppinsRegular1097))
                                                        ]))
                                              ]))
                                    ]))
                          ]))
                    ]))));
  }

  onTapManagepayment() {
    Get.toNamed(
      AppRoutes.iphone14FiftysixScreen,
    );
  }
}
