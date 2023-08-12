import 'dart:developer';

import 'package:e_commerce/presentation/iphone_14_117_container_page/controller/provider.dart';
import 'package:e_commerce/presentation/iphone_14_eightythree_screen/iphone_14_eightythree_screen.dart';
import 'package:e_commerce/widgets/custom_text_form_field.dart';
import 'package:provider/provider.dart';

import '../iphone_14_fiftyfour_screen/widgets/listsubtotal_item_widget.dart';
import '../iphone_14_fiftyfour_screen/widgets/listvector3_item_widget.dart';
import 'controller/iphone_14_fiftyfour_controller.dart';
import 'models/listsubtotal_item_model.dart';
import 'models/listvector3_item_model.dart';
import 'package:e_commerce/core/app_export.dart';
import 'package:e_commerce/widgets/app_bar/appbar_image.dart';
import 'package:e_commerce/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:e_commerce/widgets/app_bar/custom_app_bar.dart';
import 'package:e_commerce/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class Iphone14FiftyfourScreen extends GetWidget<Iphone14FiftyfourController> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
            height: getVerticalSize(52),
            leadingWidth: 34,
            leading: AppbarImage(
                height: getVerticalSize(26),
                width: getHorizontalSize(25),
                svgPath: ImageConstant.imgArrowleftBlack900,
                margin: getMargin(left: 9, top: 13, bottom: 12),
                onTap: () {
                  onTapArrowleft2();
                }),
            title: AppbarSubtitle1(
                text: "lbl_shopping_cart".tr, margin: getMargin(left: 16)),
            actions: [
              Padding(
                  padding: getPadding(left: 13, top: 16, right: 13, bottom: 17),
                  child: Text("lbl_delete".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsSemiBold12))
            ],
            styleType: Style.bgFillWhiteA700),
        body: SingleChildScrollView(
          child: Container(
            width: double.maxFinite,
            padding: getPadding(left: 19, top: 10, right: 19, bottom: 10),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Obx(() => ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return SizedBox(height: getVerticalSize(20));
                  },
                  itemCount: controller.iphone14FiftyfourModelObj.value
                      .listvector3ItemList.value.length,
                  itemBuilder: (context, index) {
                    Listvector3ItemModel model = controller
                        .iphone14FiftyfourModelObj
                        .value
                        .listvector3ItemList
                        .value[index];
                    return Listvector3ItemWidget(model);
                  })),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: getPadding(left: 1, top: 20),
                      child: Text("lbl_total".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsMedium20Gray90005))),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Sub Total',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 9,
                        bottom: 12,
                      ),
                      child: SizedBox(
                        width: getHorizontalSize(
                          193,
                        ),
                        child: Divider(
                          height: getVerticalSize(
                            1,
                          ),
                          thickness: getVerticalSize(
                            2,
                          ),
                          color: ColorConstant.green900,
                          indent: getHorizontalSize(
                            19,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      '₹699.00',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Shipping',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 9,
                        bottom: 12,
                      ),
                      child: SizedBox(
                        width: getHorizontalSize(
                          193,
                        ),
                        child: Divider(
                          height: getVerticalSize(
                            1,
                          ),
                          thickness: getVerticalSize(
                            1,
                          ),
                          color: ColorConstant.green900,
                          indent: getHorizontalSize(
                            19,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      '         ₹0',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                  ],
                ),
              ),
              // Padding(
              //     padding: getPadding(top: 10),
              //     child: Obx(() => ListView.separated(
              //         physics: NeverScrollableScrollPhysics(),
              //         shrinkWrap: true,
              //         separatorBuilder: (context, index) {
              //           return SizedBox(height: getVerticalSize(12));
              //         },
              //         itemCount: controller.iphone14FiftyfourModelObj
              //             .value.listsubtotalItemList.value.length,
              //         itemBuilder: (context, index) {
              //           ListsubtotalItemModel model = controller
              //               .iphone14FiftyfourModelObj
              //               .value
              //               .listsubtotalItemList
              //               .value[index];
              //           return ListsubtotalItemWidget(model);
              //         }))),
              GestureDetector(
                onTap: () {
                  onTapImgVector(context);
                },
                child: Container(
                    height: getVerticalSize(50),
                    width: getHorizontalSize(330),
                    margin: getMargin(top: 18),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.green.shade400),
                        borderRadius: BorderRadius.circular(25)),
                    child: Stack(alignment: Alignment.bottomCenter, children: [
                      // CustomImageView(
                      //     svgPath:
                      //         ImageConstant.imgVectorGreen90048x158,
                      //     height: getVerticalSize(46),
                      //     width: getHorizontalSize(330),
                      //     alignment: Alignment.center,
                      //     onTap: () {
                      //       onTapImgVector();
                      //     }),
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                              padding: getPadding(
                                  left: 21, top: 10, right: 31, bottom: 15),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("msg_enter_voucher_code".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsRegular1472),
                                    Padding(
                                        padding: getPadding(top: 1, bottom: 1),
                                        child: Text("lbl_apply2".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtPoppinsRegular1288))
                                  ])))
                    ])),
              ),
              CustomButton(
                  height: getVerticalSize(47),
                  width: getHorizontalSize(154),
                  text: "lbl_checkout2".tr,
                  margin: getMargin(top: 40, bottom: 5),
                  padding: ButtonPadding.PaddingAll13,
                  fontStyle: ButtonFontStyle.PoppinsMedium1472,
                  onTap: () {
                    onTapCheckout();
                  }),
            ]),
          ),
        ),
      ),
    );
  }

  void onTapImgVector(context) {
    TextEditingController couponController = TextEditingController();
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey.shade50,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20), topLeft: Radius.circular(20)),
            ),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.green.shade50,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: getPadding(left: 20),
                        child: Text("msg_coupons_offers".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtMulishRomanBold20),
                      ),
                      AppbarImage(
                        height: getSize(15),
                        width: getSize(15),
                        svgPath: ImageConstant.imgClose,
                        margin:
                            getMargin(left: 20, top: 20, right: 20, bottom: 30),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  margin: getMargin(left: 10, right: 10),
                  // padding: getPadding(left: 20, top: 5, right: 20, bottom: 14),
                  decoration: AppDecoration.outlineBlack9007f.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomTextFormField(
                            controller: couponController,
                            width: getHorizontalSize(252),
                            focusNode: FocusNode(),
                            autofocus: true,
                            // controller: controller.group644Controller,
                            hintText: "msg_enter_coupon_code".tr,
                            margin: getMargin(top: 3),
                            variant: TextFormFieldVariant.None,
                            fontStyle: TextFormFieldFontStyle.PoppinsRegular15,
                            textInputAction: TextInputAction.done),
                        InkWell(
                          onTap: () {
                            log(couponController.text);
                            Provider.of<HomeProvider>(context, listen: false)
                                .applyCoupon(couponController.text, context);
                          },
                          child: Padding(
                            padding: getPadding(top: 3, right: 5),
                            child: Text("lbl_apply".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsBold15),
                          ),
                        ),
                      ]),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "msg_get_free_safety".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsSemiBold15,
                        ),
                        Padding(
                          padding: getPadding(
                            top: 9,
                          ),
                          child: Divider(
                            height: getVerticalSize(
                              1,
                            ),
                            thickness: getVerticalSize(
                              1,
                            ),
                            color: ColorConstant.gray800,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 9,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgSettingsGreen900,
                                height: getSize(
                                  20,
                                ),
                                width: getSize(
                                  20,
                                ),
                                margin: getMargin(
                                  bottom: 16,
                                ),
                              ),
                              Container(
                                width: getHorizontalSize(
                                  241,
                                ),
                                margin: getMargin(
                                  left: 10,
                                ),
                                child: Text(
                                  "msg_use_code_freekit".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsLight12,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 36,
                                  top: 1,
                                  bottom: 14,
                                ),
                                child: Text(
                                  "lbl_apply".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsSemiBold14,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: getPadding(
                              left: 30,
                            ),
                            child: Row(
                              children: [
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "lbl_code".tr,
                                        style: TextStyle(
                                          color: ColorConstant.green900,
                                          fontSize: getFontSize(
                                            11,
                                          ),
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      TextSpan(
                                        text: "lbl_freekit".tr,
                                        style: TextStyle(
                                          color: ColorConstant.green900,
                                          fontSize: getFontSize(
                                            11,
                                          ),
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 8,
                                    top: 3,
                                  ),
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "msg_you_will_save_upto2".tr,
                                          style: TextStyle(
                                            color: ColorConstant.gray800,
                                            fontSize: getFontSize(
                                              8,
                                            ),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                        TextSpan(
                                          text: "lbl".tr,
                                          style: TextStyle(
                                            color: ColorConstant.gray800,
                                            fontSize: getFontSize(
                                              8,
                                            ),
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                        TextSpan(
                                          text: " ",
                                          style: TextStyle(
                                            color: ColorConstant.gray800,
                                            fontSize: getFontSize(
                                              8,
                                            ),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                        TextSpan(
                                          text: "msg_400_with_this_offer".tr,
                                          style: TextStyle(
                                            color: ColorConstant.gray800,
                                            fontSize: getFontSize(
                                              8,
                                            ),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                      ],
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 8,
                          ),
                          child: Divider(
                            height: getVerticalSize(
                              1,
                            ),
                            thickness: getVerticalSize(
                              1,
                            ),
                            color: ColorConstant.gray800,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 9,
                          ),
                          child: Text(
                            "lbl_view_details".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsBold13,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "msg_get_free_safety".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsSemiBold15,
                        ),
                        Padding(
                          padding: getPadding(
                            top: 9,
                          ),
                          child: Divider(
                            height: getVerticalSize(
                              1,
                            ),
                            thickness: getVerticalSize(
                              1,
                            ),
                            color: ColorConstant.gray800,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 9,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgSettingsGreen900,
                                height: getSize(
                                  20,
                                ),
                                width: getSize(
                                  20,
                                ),
                                margin: getMargin(
                                  bottom: 16,
                                ),
                              ),
                              Container(
                                width: getHorizontalSize(
                                  241,
                                ),
                                margin: getMargin(
                                  left: 10,
                                ),
                                child: Text(
                                  "msg_use_code_freekit".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsLight12,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 36,
                                  top: 1,
                                  bottom: 14,
                                ),
                                child: Text(
                                  "lbl_apply".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsSemiBold14,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: getPadding(
                              left: 30,
                            ),
                            child: Row(
                              children: [
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "lbl_code".tr,
                                        style: TextStyle(
                                          color: ColorConstant.green900,
                                          fontSize: getFontSize(
                                            11,
                                          ),
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      TextSpan(
                                        text: "lbl_freekit".tr,
                                        style: TextStyle(
                                          color: ColorConstant.green900,
                                          fontSize: getFontSize(
                                            11,
                                          ),
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 8,
                                    top: 3,
                                  ),
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "msg_you_will_save_upto2".tr,
                                          style: TextStyle(
                                            color: ColorConstant.gray800,
                                            fontSize: getFontSize(
                                              8,
                                            ),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                        TextSpan(
                                          text: "lbl".tr,
                                          style: TextStyle(
                                            color: ColorConstant.gray800,
                                            fontSize: getFontSize(
                                              8,
                                            ),
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                        TextSpan(
                                          text: " ",
                                          style: TextStyle(
                                            color: ColorConstant.gray800,
                                            fontSize: getFontSize(
                                              8,
                                            ),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                        TextSpan(
                                          text: "msg_400_with_this_offer".tr,
                                          style: TextStyle(
                                            color: ColorConstant.gray800,
                                            fontSize: getFontSize(
                                              8,
                                            ),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                      ],
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 8,
                          ),
                          child: Divider(
                            height: getVerticalSize(
                              1,
                            ),
                            thickness: getVerticalSize(
                              1,
                            ),
                            color: ColorConstant.gray800,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 9,
                          ),
                          child: Text(
                            "lbl_view_details".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsBold13,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "msg_get_free_safety".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsSemiBold15,
                        ),
                        Padding(
                          padding: getPadding(
                            top: 9,
                          ),
                          child: Divider(
                            height: getVerticalSize(
                              1,
                            ),
                            thickness: getVerticalSize(
                              1,
                            ),
                            color: ColorConstant.gray800,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 9,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgSettingsGreen900,
                                height: getSize(
                                  20,
                                ),
                                width: getSize(
                                  20,
                                ),
                                margin: getMargin(
                                  bottom: 16,
                                ),
                              ),
                              Container(
                                width: getHorizontalSize(
                                  241,
                                ),
                                margin: getMargin(
                                  left: 10,
                                ),
                                child: Text(
                                  "msg_use_code_freekit".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsLight12,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 36,
                                  top: 1,
                                  bottom: 14,
                                ),
                                child: Text(
                                  "lbl_apply".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsSemiBold14,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: getPadding(
                              left: 30,
                            ),
                            child: Row(
                              children: [
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "lbl_code".tr,
                                        style: TextStyle(
                                          color: ColorConstant.green900,
                                          fontSize: getFontSize(
                                            11,
                                          ),
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      TextSpan(
                                        text: "lbl_freekit".tr,
                                        style: TextStyle(
                                          color: ColorConstant.green900,
                                          fontSize: getFontSize(
                                            11,
                                          ),
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 8,
                                    top: 3,
                                  ),
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "msg_you_will_save_upto2".tr,
                                          style: TextStyle(
                                            color: ColorConstant.gray800,
                                            fontSize: getFontSize(
                                              8,
                                            ),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                        TextSpan(
                                          text: "lbl".tr,
                                          style: TextStyle(
                                            color: ColorConstant.gray800,
                                            fontSize: getFontSize(
                                              8,
                                            ),
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                        TextSpan(
                                          text: " ",
                                          style: TextStyle(
                                            color: ColorConstant.gray800,
                                            fontSize: getFontSize(
                                              8,
                                            ),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                        TextSpan(
                                          text: "msg_400_with_this_offer".tr,
                                          style: TextStyle(
                                            color: ColorConstant.gray800,
                                            fontSize: getFontSize(
                                              8,
                                            ),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                      ],
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 8,
                          ),
                          child: Divider(
                            height: getVerticalSize(
                              1,
                            ),
                            thickness: getVerticalSize(
                              1,
                            ),
                            color: ColorConstant.gray800,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 9,
                          ),
                          child: Text(
                            "lbl_view_details".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsBold13,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  // onTapImgVector() {
  //   Get.toNamed(
  //     AppRoutes.iphone14EightythreeScreen,
  //   );
  // }

  onTapCheckout() {
    Get.toNamed(
      AppRoutes.iphone14FiftyfiveScreen,
    );
  }

  onTapArrowleft2() {
    Get.back(
        // AppRoutes.iphone14FiftythreeScreen,
        );
  }
}
