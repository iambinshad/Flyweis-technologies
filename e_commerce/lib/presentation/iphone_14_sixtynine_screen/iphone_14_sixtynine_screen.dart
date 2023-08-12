import 'package:e_commerce/widgets/custom_icon_button.dart';

import '../iphone_14_sixtynine_screen/widgets/listzipcode1_item_widget.dart';
import 'controller/iphone_14_sixtynine_controller.dart';
import 'models/listzipcode1_item_model.dart';
import 'package:e_commerce/core/app_export.dart';
import 'package:e_commerce/widgets/custom_button.dart';
import 'package:e_commerce/widgets/custom_checkbox.dart';
import 'package:e_commerce/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class Iphone14SixtynineScreen extends GetWidget<Iphone14SixtynineController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomButton(
                          margin: getMargin(right: 215),
                          height: getVerticalSize(52),
                          text: "lbl_edit_card".tr,
                          variant: ButtonVariant.FillWhiteA700,
                          shape: ButtonShape.Square,
                          prefixWidget: Container(
                              margin: getMargin(right: 15),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgArrowleftBlack900)),
                          onTap: () {
                            onTapEditcard();
                          }),
                      Container(
                          height: getVerticalSize(161),
                          width: getHorizontalSize(326),
                          margin: getMargin(top: 20),
                          child: Stack(alignment: Alignment.center, children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgShadow,
                                height: getVerticalSize(84),
                                width: getHorizontalSize(288),
                                alignment: Alignment.bottomCenter,
                                margin: getMargin(bottom: 11)),
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                ImageConstant.imgGroup562),
                                            fit: BoxFit.cover)),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                              padding: getPadding(
                                                  left: 14,
                                                  top: 10,
                                                  right: 14,
                                                  bottom: 10),
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: fs.Svg(
                                                          ImageConstant
                                                              .imgGroup563),
                                                      fit: BoxFit.cover)),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgLink,
                                                        height:
                                                            getVerticalSize(28),
                                                        width:
                                                            getHorizontalSize(
                                                                39),
                                                        margin: getMargin(
                                                            right: 4)),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 4,
                                                            top: 21,
                                                            bottom: 4),
                                                        child: Obx(() =>
                                                            ListView.separated(
                                                                physics:
                                                                    NeverScrollableScrollPhysics(),
                                                                shrinkWrap:
                                                                    true,
                                                                separatorBuilder:
                                                                    (context,
                                                                        index) {
                                                                  return SizedBox(
                                                                      height:
                                                                          getVerticalSize(
                                                                              21));
                                                                },
                                                                itemCount: controller
                                                                    .iphone14SixtynineModelObj
                                                                    .value
                                                                    .listzipcode1ItemList
                                                                    .value
                                                                    .length,
                                                                itemBuilder:
                                                                    (context,
                                                                        index) {
                                                                  Listzipcode1ItemModel
                                                                      model =
                                                                      controller
                                                                          .iphone14SixtynineModelObj
                                                                          .value
                                                                          .listzipcode1ItemList
                                                                          .value[index];
                                                                  return Listzipcode1ItemWidget(
                                                                      model);
                                                                })))
                                                  ]))
                                        ])))
                          ])),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 22, top: 49),
                              child: Text("lbl_name_on_card".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsRegular1332))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 22, top: 19),
                              child: Text("lbl_jameson_dunn".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtMontserratRegular1712))),
                      Padding(
                          padding: getPadding(top: 8),
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: ColorConstant.green900,
                              indent: getHorizontalSize(23),
                              endIndent: getHorizontalSize(24))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 22, top: 29),
                              child: Text("lbl_card_number".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsRegular1332))),
                      Padding(
                          padding: getPadding(left: 22, top: 13, right: 20),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 5, bottom: 3),
                                    child: Text("msg_4560_5644_3224_543".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtMontserratRegular1522)),
                                CustomImageView(
                                    svgPath:
                                        ImageConstant.imgVolumeDeepOrangeA400,
                                    height: getVerticalSize(28),
                                    width: getHorizontalSize(39))
                              ])),
                      Padding(
                          padding: getPadding(top: 4),
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: ColorConstant.green900,
                              indent: getHorizontalSize(23),
                              endIndent: getHorizontalSize(24))),
                      Padding(
                          padding: getPadding(left: 22, top: 30, right: 24),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                    padding: getPadding(top: 27),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("lbl_expiry_date".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsRegular1332),
                                          Padding(
                                              padding: getPadding(top: 17),
                                              child: Text("lbl_09_202".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtMontserratRegular1522)),
                                          Padding(
                                              padding: getPadding(top: 7),
                                              child: SizedBox(
                                                  width: getHorizontalSize(159),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: ColorConstant
                                                          .green900)))
                                        ])),

                                Padding(
                                    padding: getPadding(top: 27),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("lbl_cvv".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsRegular1332),
                                          Padding(
                                              padding: getPadding(top: 17),
                                              child: Text("lbl_467".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtMontserratRegular1522)),
                                          Padding(
                                              padding: getPadding(top: 7),
                                              child: SizedBox(
                                                  width: getHorizontalSize(159),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: ColorConstant
                                                          .green900)))
                                        ])),
                                // Padding(
                                //     padding: getPadding(left: 22),
                                //     child: Column(
                                //         crossAxisAlignment:
                                //             CrossAxisAlignment.start,
                                //         mainAxisAlignment:
                                //             MainAxisAlignment.start,
                                //         children: [
                                //           Text("lbl_cvv".tr,
                                //               overflow: TextOverflow.ellipsis,
                                //               textAlign: TextAlign.left,
                                //               style: AppStyle
                                //                   .txtPoppinsRegular1332),
                                //           CustomTextFormField(
                                //               width: getHorizontalSize(160),
                                //               focusNode: FocusNode(),
                                //               autofocus: true,
                                //               controller:
                                //                   controller.group634Controller,
                                //               hintText: "lbl_467".tr,
                                //               margin: getMargin(top: 18),
                                //               variant: TextFormFieldVariant
                                //                   .UnderLineGreen900,
                                //               fontStyle: TextFormFieldFontStyle
                                //                   .MontserratRegular1522,
                                //               textInputAction:
                                //                   TextInputAction.done)
                                //         ]))
                              ])),
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
                                "msg_save_this_card_details".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: TextStyle(fontWeight: FontWeight.w400,
                                    fontSize: 15),
                              ),

                            ],
                          ),
                        ),
                      ),
                      Padding(
                          padding: getPadding(
                              left: 23, top: 30, right: 24, bottom: 5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomButton(
                                    height: getVerticalSize(48),
                                    width: getHorizontalSize(158),
                                    text: "lbl_cancel".tr,
                                    variant: ButtonVariant.OutlineGreen900_1,
                                    // shape: ButtonShape.Square,
                                    padding: ButtonPadding.PaddingAll16,
                                    fontStyle: ButtonFontStyle
                                        .MontserratBold1332Green900,
                                    onTap: () {
                                      onTapCancel();
                                    }),
                                CustomButton(
                                    height: getVerticalSize(49),
                                    width: getHorizontalSize(159),
                                    text: "lbl_save".tr,
                                    margin: getMargin(left: 23),
                                    padding: ButtonPadding.PaddingAll16,
                                    fontStyle:
                                        ButtonFontStyle.MontserratBold1332,
                                    onTap: () {
                                      onTapSave();
                                    })
                              ]))
                    ]))));
  }

  onTapEditcard() {
    Get.toNamed(
      AppRoutes.iphone14SixtysixScreen,
    );
  }

  onTapCancel() {
    Get.toNamed(
      AppRoutes.iphone14SixtysixScreen,
    );
  }

  onTapSave() {
    Get.toNamed(
      AppRoutes.iphone14EightysixScreen,
    );
  }
}
