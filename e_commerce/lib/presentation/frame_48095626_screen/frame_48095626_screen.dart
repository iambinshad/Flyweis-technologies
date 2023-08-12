import 'controller/frame_48095626_controller.dart';
import 'package:e_commerce/core/app_export.dart';
import 'package:e_commerce/widgets/app_bar/custom_app_bar.dart';
import 'package:e_commerce/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class Frame48095626Screen extends GetWidget<Frame48095626Controller> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
                width: size.width,
                height: size.height,
                padding: getPadding(bottom: 36),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: fs.Svg(ImageConstant.imgGroup1122),
                        fit: BoxFit.cover)),
                child: Container(
                    width: double.maxFinite,
                    padding: getPadding(top: 21, bottom: 21),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomAppBar(
                                height: getVerticalSize(26),
                                title: Padding(
                                  padding: getPadding(left: 14),
                                  child: Row(children: [
                                    Text("lbl_reset".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsRegular169),
                                    Padding(
                                        padding: getPadding(left: 113),
                                        child: Text("lbl_filter".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtPoppinsMedium169))
                                  ]),
                                ),
                              ),
                              Padding(
                                padding: getPadding(top: 37),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomButton(
                                              text: "lbl_price".tr,
                                              margin: getMargin(
                                                  left: 24, right: 25),
                                              shape: ButtonShape.Square,
                                              fontStyle: ButtonFontStyle
                                                  .PoppinsRegular169,
                                              suffixWidget: Container(
                                                  margin: getMargin(left: 30),
                                                  decoration: BoxDecoration(
                                                      color: ColorConstant
                                                          .green900),
                                                  child: CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowdownGreen900)),
                                              onTap: () {
                                                onTapPrice();
                                              }),
                                          Padding(
                                              padding: getPadding(top: 11),
                                              child: Divider(
                                                  height: getVerticalSize(1),
                                                  thickness: getVerticalSize(1),
                                                  color:
                                                      ColorConstant.green900))
                                        ]),
                                    Padding(
                                        padding: getPadding(top: 18),
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              CustomButton(
                                                  text: "lbl_special_offers".tr,
                                                  margin: getMargin(
                                                      left: 24, right: 25),
                                                  shape: ButtonShape.Square,
                                                  fontStyle: ButtonFontStyle
                                                      .PoppinsRegular169,
                                                  suffixWidget: Container(
                                                      margin:
                                                          getMargin(left: 30),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .green900),
                                                      child: CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgArrowdownGreen900)),
                                                  onTap: () {
                                                    onTapSpecialoffers();
                                                  }),
                                              Padding(
                                                  padding: getPadding(top: 9),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: ColorConstant
                                                          .green900))
                                            ])),
                                    Padding(
                                      padding: getPadding(top: 16),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding: getPadding(
                                                  left: 24, right: 25),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text("lbl_brand".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtPoppinsRegular169Black900),
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgArrowup,
                                                        height:
                                                            getVerticalSize(7),
                                                        width:
                                                            getHorizontalSize(
                                                                13),
                                                        margin: getMargin(
                                                            top: 12, bottom: 5))
                                                  ])),
                                          Container(
                                              margin: getMargin(top: 7),
                                              padding: getPadding(
                                                  left: 23, right: 23),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Row(children: [
                                                      Container(
                                                          height: getSize(15),
                                                          width: getSize(15),
                                                          margin: getMargin(
                                                              top: 1,
                                                              bottom: 3),
                                                          child: Stack(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              children: [
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgVector,
                                                                    height:
                                                                        getSize(
                                                                            15),
                                                                    width:
                                                                        getSize(
                                                                            15),
                                                                    alignment:
                                                                        Alignment
                                                                            .center),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child: Container(
                                                                        height: getSize(15),
                                                                        width: getSize(15),
                                                                        child: Stack(alignment: Alignment.center, children: [
                                                                          CustomImageView(
                                                                              svgPath: ImageConstant.imgTrashGreen90022x22,
                                                                              height: getSize(15),
                                                                              width: getSize(15),
                                                                              alignment: Alignment.center),
                                                                          CustomImageView(
                                                                              svgPath: ImageConstant.imgCloseGreen90011x11,
                                                                              height: getSize(11),
                                                                              width: getSize(11),
                                                                              alignment: Alignment.center)
                                                                        ])))
                                                              ])),
                                                      GestureDetector(
                                                          onTap: () {
                                                            onTapTxtBrucoffee();
                                                          },
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 25),
                                                              child: Text(
                                                                  "lbl_bru_coffee"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtPoppinsRegular1314)))
                                                    ]),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 7),
                                                        child: Row(children: [
                                                          Container(
                                                              height:
                                                                  getSize(15),
                                                              width:
                                                                  getSize(15),
                                                              margin: getMargin(
                                                                  top: 1,
                                                                  bottom: 3),
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  children: [
                                                                    CustomImageView(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgVector,
                                                                        height: getSize(
                                                                            15),
                                                                        width: getSize(
                                                                            15),
                                                                        alignment:
                                                                            Alignment.center),
                                                                    CustomImageView(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgTrashGreen90022x22,
                                                                        height: getSize(
                                                                            15),
                                                                        width: getSize(
                                                                            15),
                                                                        alignment:
                                                                            Alignment.center)
                                                                  ])),
                                                          GestureDetector(
                                                              onTap: () {
                                                                onTapTxtNescafe();
                                                              },
                                                              child: Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          left:
                                                                              25),
                                                                  child: Text(
                                                                      "lbl_nescafe"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtPoppinsRegular1314)))
                                                        ]))
                                                  ])),
                                          Padding(
                                            padding: getPadding(top: 11),
                                            child: Divider(
                                                height: getVerticalSize(1),
                                                thickness: getVerticalSize(1),
                                                color: ColorConstant.green900),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Container(
                              height: getVerticalSize(268),
                              width: double.maxFinite)
                        ]))),
            bottomNavigationBar: Padding(
                padding: getPadding(bottom: 30),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: getPadding(left: 24, right: 25),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("lbl_price_range".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsRegular169Black900),
                              CustomImageView(
                                  svgPath: ImageConstant.imgArrowdownGreen900,
                                  height: getVerticalSize(7),
                                  width: getHorizontalSize(13),
                                  margin: getMargin(top: 2, bottom: 15))
                            ]),
                      ),
                      Padding(
                          padding: getPadding(top: 9),
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: ColorConstant.green900))
                    ]))));
  }

  onTapPrice() {
    Get.toNamed(
      AppRoutes.iphone14FiftytwoScreen,
    );
  }

  onTapSpecialoffers() {
    Get.toNamed(
      AppRoutes.iphone14FiftytwoScreen,
    );
  }

  onTapTxtBrucoffee() {
    Get.toNamed(
      AppRoutes.iphone14FiftytwoScreen,
    );
  }

  onTapTxtNescafe() {
    Get.toNamed(
      AppRoutes.iphone14FiftytwoScreen,
    );
  }
}
