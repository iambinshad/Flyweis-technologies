import '../iphone_14_ninetyone_screen/widgets/listdiscfive_item_widget.dart';
import '../iphone_14_ninetyone_screen/widgets/listdiscthree_item_widget.dart';
import 'controller/iphone_14_ninetyone_controller.dart';
import 'models/listdiscfive_item_model.dart';
import 'models/listdiscthree_item_model.dart';
import 'package:e_commerce/core/app_export.dart';
import 'package:e_commerce/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class Iphone14NinetyoneScreen extends GetWidget<Iphone14NinetyoneController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(bottom: 5),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomButton(
                                  height: getVerticalSize(52),
                                  text: "lbl_checkout".tr,
                                  variant: ButtonVariant.FillWhiteA700,
                                  shape: ButtonShape.Square,
                                  prefixWidget: Container(
                                      margin: getMargin(right: 15),
                                      child: CustomImageView(
                                          svgPath: ImageConstant
                                              .imgArrowleftBlack900)),
                                  onTap: () {
                                    onTapCheckout();
                                  }),
                              Container(
                                  height: getVerticalSize(24),
                                  width: getHorizontalSize(315),
                                  margin: getMargin(top: 9),
                                  child: Stack(
                                      alignment: Alignment.centerLeft,
                                      children: [
                                        Align(
                                            alignment: Alignment.center,
                                            child: SizedBox(
                                                width: getHorizontalSize(279),
                                                child: Divider(
                                                    height: getVerticalSize(1),
                                                    thickness:
                                                        getVerticalSize(1),
                                                    color: ColorConstant
                                                        .green900))),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: SizedBox(
                                                width: getHorizontalSize(161),
                                                child: Divider(
                                                    height: getVerticalSize(1),
                                                    thickness:
                                                        getVerticalSize(1),
                                                    color:
                                                        ColorConstant.green800,
                                                    indent: getHorizontalSize(
                                                        20)))),
                                        CustomImageView(
                                            svgPath: ImageConstant.imgContrast,
                                            height: getSize(24),
                                            width: getSize(24),
                                            alignment: Alignment.centerRight),
                                        CustomImageView(
                                            svgPath: ImageConstant.imgSettings,
                                            height: getSize(24),
                                            width: getSize(24),
                                            alignment: Alignment.center),
                                        CustomImageView(
                                            svgPath: ImageConstant
                                                .imgContrastWhiteA700,
                                            height: getSize(24),
                                            width: getSize(24),
                                            alignment: Alignment.centerLeft)
                                      ])),
                              Padding(
                                  padding:
                                      getPadding(left: 30, top: 10, right: 23),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                                                style: AppStyle
                                                    .txtPoppinsRegular1121))
                                      ])),
                              Padding(
                                  padding:
                                      getPadding(left: 20, top: 43, right: 20),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        CustomImageView(
                                            svgPath: ImageConstant.imgCall,
                                            height: getVerticalSize(31),
                                            width: getHorizontalSize(53)),
                                        CustomImageView(
                                            svgPath: ImageConstant.imgBag,
                                            height: getVerticalSize(31),
                                            width: getHorizontalSize(53),
                                            margin: getMargin(left: 11),
                                            onTap: () {
                                              onTapImgBag();
                                            }),
                                        CustomImageView(
                                            svgPath: ImageConstant.imgVolume,
                                            height: getVerticalSize(31),
                                            width: getHorizontalSize(53),
                                            margin: getMargin(left: 11)),
                                        GestureDetector(
                                            onTap: () {
                                              onTapTxtManagepaymentme();
                                            },
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 14,
                                                    top: 11,
                                                    bottom: 1),
                                                child: Text(
                                                    "msg_manage_payment_method"
                                                        .tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsRegular1168)))
                                      ])),
                              Container(
                                  margin:
                                      getMargin(left: 10, top: 20, right: 9),
                                  padding: getPadding(
                                      left: 10, top: 11, right: 10, bottom: 11),
                                  decoration: AppDecoration.fillWhiteA700
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder15),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text("msg_suggested_for_you".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtPoppinsSemiBold15),
                                        Padding(
                                            padding: getPadding(top: 8),
                                            child: Divider(
                                                height: getVerticalSize(1),
                                                thickness: getVerticalSize(1),
                                                color: ColorConstant.gray800)),
                                        Padding(
                                            padding:
                                                getPadding(top: 9, bottom: 7),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(bottom: 7),
                                                      child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgDisc1,
                                                                height:
                                                                    getSize(24),
                                                                width: getSize(
                                                                    24)),
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgDisc2,
                                                                height:
                                                                    getSize(24),
                                                                width:
                                                                    getSize(24),
                                                                margin:
                                                                    getMargin(
                                                                        top:
                                                                            42)),
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgDisc2,
                                                                height:
                                                                    getSize(24),
                                                                width:
                                                                    getSize(24),
                                                                margin:
                                                                    getMargin(
                                                                        top:
                                                                            33))
                                                          ])),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 6, top: 2),
                                                      child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                                "msg_kotak_mahindra_bank"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtNunitoSansRegular1456),
                                                            Text(
                                                                "msg_account_no_xxxx"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtNunitoSansRegular1248),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top:
                                                                            21),
                                                                child: Text(
                                                                    "lbl_google_pay_upi"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtNunitoSansRegular1456)),
                                                            Text(
                                                                "msg_tejasaher67_gmail_com"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtNunitoSansRegular1248),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top:
                                                                            20),
                                                                child: Text(
                                                                    "lbl_pay_pal"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtNunitoSansRegular1456)),
                                                            Text(
                                                                "msg_tejasaher67_gmail_com"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtNunitoSansRegular1248)
                                                          ])),
                                                  Spacer(),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 4),
                                                      child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .end,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgTicket,
                                                                height:
                                                                    getVerticalSize(
                                                                        27),
                                                                width:
                                                                    getHorizontalSize(
                                                                        59)),
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgGooglepay,
                                                                height:
                                                                    getSize(36),
                                                                width:
                                                                    getSize(36),
                                                                margin:
                                                                    getMargin(
                                                                        top: 32,
                                                                        right:
                                                                            5)),
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgGooglepay2,
                                                                height:
                                                                    getSize(36),
                                                                width:
                                                                    getSize(36),
                                                                margin:
                                                                    getMargin(
                                                                        top: 21,
                                                                        right:
                                                                            5))
                                                          ]))
                                                ]))
                                      ])),
                              Container(
                                  margin:
                                      getMargin(left: 10, top: 10, right: 9),
                                  padding: getPadding(
                                      left: 10, top: 11, right: 10, bottom: 11),
                                  decoration: AppDecoration.fillWhiteA700
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder15),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text("msg_all_other_option".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtPoppinsSemiBold15),
                                        Padding(
                                            padding: getPadding(top: 8),
                                            child: Divider(
                                                height: getVerticalSize(1),
                                                thickness: getVerticalSize(1),
                                                color: ColorConstant.gray800)),
                                        Padding(
                                            padding:
                                                getPadding(top: 9, right: 1),
                                            child: Obx(() => ListView.separated(
                                                physics:
                                                    NeverScrollableScrollPhysics(),
                                                shrinkWrap: true,
                                                separatorBuilder:
                                                    (context, index) {
                                                  return SizedBox(
                                                      height:
                                                          getVerticalSize(20));
                                                },
                                                itemCount: controller
                                                    .iphone14NinetyoneModelObj
                                                    .value
                                                    .listdiscthreeItemList
                                                    .value
                                                    .length,
                                                itemBuilder: (context, index) {
                                                  ListdiscthreeItemModel model =
                                                      controller
                                                          .iphone14NinetyoneModelObj
                                                          .value
                                                          .listdiscthreeItemList
                                                          .value[index];
                                                  return ListdiscthreeItemWidget(
                                                      model);
                                                }))),
                                        Padding(
                                            padding: getPadding(
                                                top: 20, right: 1, bottom: 8),
                                            child: Obx(() => ListView.separated(
                                                physics:
                                                    NeverScrollableScrollPhysics(),
                                                shrinkWrap: true,
                                                separatorBuilder:
                                                    (context, index) {
                                                  return SizedBox(
                                                      height:
                                                          getVerticalSize(20));
                                                },
                                                itemCount: controller
                                                    .iphone14NinetyoneModelObj
                                                    .value
                                                    .listdiscfiveItemList
                                                    .value
                                                    .length,
                                                itemBuilder: (context, index) {
                                                  ListdiscfiveItemModel model =
                                                      controller
                                                          .iphone14NinetyoneModelObj
                                                          .value
                                                          .listdiscfiveItemList
                                                          .value[index];
                                                  return ListdiscfiveItemWidget(
                                                      model);
                                                })))
                                      ]))
                            ])))),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(48),
                width: getHorizontalSize(156),
                text: "lbl_next".tr,
                margin: getMargin(left: 117, right: 116, bottom: 54),
                padding: ButtonPadding.PaddingAll16,
                fontStyle: ButtonFontStyle.MontserratBold1308,
                onTap: () {
                  onTapNext();
                })));
  }

  onTapCheckout() {
    Get.toNamed(
      AppRoutes.iphone14FiftyfiveScreen,
    );
  }

  onTapImgBag() {
    Get.toNamed(
      AppRoutes.iphone14FiftysixScreen,
    );
  }

  onTapTxtManagepaymentme() {
    Get.toNamed(
      AppRoutes.iphone14SixtytwoScreen,
    );
  }

  onTapNext() {
    Get.toNamed(
      AppRoutes.iphone14FiftysevenScreen,
    );
  }
}
