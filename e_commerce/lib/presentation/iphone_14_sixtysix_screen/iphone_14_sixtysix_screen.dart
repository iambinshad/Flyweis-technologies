import 'package:e_commerce/core/utils/validation_functions.dart';
import 'package:e_commerce/presentation/iphone_14_114_screen/iphone_14_114_screen.dart';
import 'package:e_commerce/widgets/custom_icon_button.dart';
import 'package:e_commerce/widgets/custom_text_form_field.dart';

import '../iphone_14_sixtysix_screen/widgets/listlocation_item_widget.dart';
import 'controller/iphone_14_sixtysix_controller.dart';
import 'models/listlocation_item_model.dart';
import 'package:e_commerce/core/app_export.dart';
import 'package:e_commerce/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class Iphone14SixtysixScreen extends GetWidget<Iphone14SixtysixController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: SingleChildScrollView(
          child: Container(
            width: double.maxFinite,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomButton(
                      margin: getMargin(right: 250),
                      height: getVerticalSize(52),
                      text: "lbl_account".tr,
                      variant: ButtonVariant.FillWhiteA700,
                      shape: ButtonShape.Square,
                      prefixWidget: Container(
                          margin: getMargin(right: 15),
                          child: CustomImageView(
                              svgPath: ImageConstant.imgArrowleftBlack900)),
                      onTap: () {
                        onTapAccount();
                      }),
                  Padding(
                      padding: getPadding(left: 30, top: 30, right: 59),
                      child: Row(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgEllipse104,
                            height: getSize(87),
                            width: getSize(87),
                            radius: BorderRadius.circular(getHorizontalSize(43))),
                        Padding(
                            padding: getPadding(left: 26, top: 16, bottom: 15),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("lbl_jameson_dunn".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtMontserratMedium18),
                                  Padding(
                                      padding: getPadding(top: 11),
                                      child: Text("msg_jamesondunn_gmail_com".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtPoppinsRegular14Black900))
                                ]))
                      ])),
                  GestureDetector(
                    onTap: () {
                      onTapRowclose();
                    },
                    child: Padding(
                      padding: getPadding(left: 30, top: 34, right: 97),
                      child: Row(children: [
                        Container(
                            height: getSize(31),
                            width: getSize(31),
                            child: Stack(alignment: Alignment.center, children: [
                              CustomImageView(
                                  svgPath: ImageConstant.imgCloseGreen800,
                                  height: getSize(31),
                                  width: getSize(31),
                                  alignment: Alignment.center),
                              CustomImageView(
                                  svgPath: ImageConstant.imgEdit,
                                  height: getVerticalSize(15),
                                  width: getHorizontalSize(11),
                                  alignment: Alignment.center)
                            ])),
                        Padding(
                            padding: getPadding(left: 15, top: 4, bottom: 4),
                            child: Text("lbl_edit_profile".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsRegular1405)),
                        Spacer(),
                        CustomImageView(
                            svgPath: ImageConstant.imgShapeBlack900,
                            height: getVerticalSize(7),
                            width: getHorizontalSize(3),
                            margin: getMargin(top: 12, bottom: 12))
                      ]),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        backgroundColor: Colors.transparent,
                        context: context,
                        builder: (BuildContext context) {
                          return SingleChildScrollView(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20)
                                )
                              ),
                              child:  Form(
                                key: _formKey,
                                child: Container(
                                  height: getVerticalSize(
                                    711,
                                  ),
                                  width: double.maxFinite,
                                  child: Stack(
                                    alignment: Alignment.topCenter,
                                    children: [
                                      CustomImageView(
                                        svgPath: ImageConstant.imgClose,
                                        height: getSize(
                                          15,
                                        ),
                                        width: getSize(
                                          15,
                                        ),
                                        alignment: Alignment.topRight,
                                        margin: getMargin(
                                          top: 28,
                                          right: 25,
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.topCenter,
                                        child: Container(
                                          height: getVerticalSize(
                                            427,
                                          ),
                                          width: double.maxFinite,
                                          child: Stack(
                                            alignment: Alignment.topRight,
                                            children: [
                                              CustomImageView(
                                                imagePath: ImageConstant.imgGooglemapta1,
                                                height: getVerticalSize(
                                                  427,
                                                ),
                                                width: getHorizontalSize(
                                                  390,
                                                ),
                                                radius: BorderRadius.circular(
                                                  getHorizontalSize(
                                                    20,
                                                  ),
                                                ),
                                                alignment: Alignment.center,
                                              ),
                                              Align(
                                                alignment: Alignment.topRight,
                                                child: Padding(
                                                  padding: getPadding(
                                                    top: 22,
                                                    right: 12,
                                                  ),
                                                  child: Column(
                                                    mainAxisSize: MainAxisSize.min,
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    children: [
                                                      CustomIconButton(
                                                        height: 42,
                                                        width: 42,
                                                        variant: IconButtonVariant.FillWhiteA700cc,
                                                        shape: IconButtonShape.CircleBorder21,
                                                        alignment: Alignment.centerRight,
                                                        child: CustomImageView(
                                                          svgPath: ImageConstant.imgCloseWhiteA700,
                                                        ),
                                                      ),
                                                      CustomImageView(
                                                        svgPath: ImageConstant.imgLocationGreen900,
                                                        height: getVerticalSize(
                                                          57,
                                                        ),
                                                        width: getHorizontalSize(
                                                          51,
                                                        ),
                                                        margin: getMargin(
                                                          top: 27,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                          padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10,
                                          ),
                                          decoration: AppDecoration.outlineBlack9003f1.copyWith(
                                            borderRadius: BorderRadiusStyle.customBorderTL20,
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              CustomImageView(
                                                svgPath: ImageConstant.imgVector35,
                                                height: getVerticalSize(
                                                  3,
                                                ),
                                                width: getHorizontalSize(
                                                  48,
                                                ),
                                                alignment: Alignment.center,
                                              ),
                                              CustomTextFormField(
                                                focusNode: FocusNode(),
                                                autofocus: true,
                                                // controller: controller.addressController,
                                                hintText: "lbl_address_line_1".tr,
                                                margin: getMargin(
                                                  top: 17,
                                                ),
                                              ),
                                              CustomTextFormField(
                                                focusNode: FocusNode(),
                                                autofocus: true,
                                                // controller: controller.addressoneController,
                                                hintText: "lbl_address_line_2".tr,
                                                margin: getMargin(
                                                  top: 10,
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  top: 10,
                                                ),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    Expanded(
                                                      child: CustomButton(
                                                        height: getVerticalSize(
                                                          55,
                                                        ),
                                                        text: "msg_house_flat_number".tr,
                                                        margin: getMargin(
                                                          right: 4,
                                                        ),
                                                        variant: ButtonVariant.OutlineBlack900,
                                                        shape: ButtonShape.CustomBorderBL10,
                                                        padding: ButtonPadding.PaddingAll16,
                                                        fontStyle: ButtonFontStyle.PoppinsRegular13,
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: CustomTextFormField(
                                                        focusNode: FocusNode(),
                                                        autofocus: true,
                                                        // controller: controller.pincodeController,
                                                        hintText: "lbl_pin_code".tr,
                                                        margin: getMargin(
                                                          left: 4,
                                                        ),
                                                        textInputType: TextInputType.number,
                                                        validator: (value) {
                                                          if (!isNumeric(value)) {
                                                            return "Please enter valid number";
                                                          }
                                                          return null;
                                                        },
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              CustomTextFormField(
                                                focusNode: FocusNode(),
                                                autofocus: true,
                                                // controller: controller.nameController,
                                                hintText: "msg_apartment_society_building".tr,
                                                margin: getMargin(
                                                  top: 10,
                                                ),
                                                validator: (value) {
                                                  if (!isText(value)) {
                                                    return "Please enter valid text";
                                                  }
                                                  return null;
                                                },
                                              ),
                                              CustomTextFormField(
                                                focusNode: FocusNode(),
                                                autofocus: true,
                                                // controller: controller.landmarkController,
                                                hintText: "msg_landmark_optional".tr,
                                                margin: getMargin(
                                                  top: 10,
                                                ),
                                                textInputAction: TextInputAction.done,
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  top: 10,
                                                ),
                                                child: Text(
                                                  "lbl_save_as".tr,
                                                  overflow: TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle.txtPoppinsMedium15Gray900,
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  top: 9,
                                                  bottom: 79,
                                                ),
                                                child: Row(
                                                  children: [
                                                    CustomButton(
                                                      height: getVerticalSize(
                                                        33,
                                                      ),
                                                      width: getHorizontalSize(
                                                        75,
                                                      ),
                                                      text: "lbl_home".tr,
                                                      variant: ButtonVariant.OutlineBlack900,
                                                      shape: ButtonShape.CustomBorderBL10,
                                                      padding: ButtonPadding.PaddingAll7,
                                                      fontStyle: ButtonFontStyle.PoppinsRegular15,
                                                    ),
                                                    CustomButton(
                                                      height: getVerticalSize(
                                                        33,
                                                      ),
                                                      width: getHorizontalSize(
                                                        72,
                                                      ),
                                                      text: "lbl_other".tr,
                                                      margin: getMargin(
                                                        left: 10,
                                                      ),
                                                      variant: ButtonVariant.OutlineBlack900,
                                                      shape: ButtonShape.CustomBorderBL10,
                                                      padding: ButtonPadding.PaddingAll7,
                                                      fontStyle:
                                                      ButtonFontStyle.PoppinsRegular15Gray50001,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                          padding: getPadding(
                                            all: 8,
                                          ),
                                          decoration: AppDecoration.outlineBlack90026.copyWith(
                                            borderRadius: BorderRadiusStyle.roundedBorder10,
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              CustomButton(
                                                height: getVerticalSize(
                                                  51,
                                                ),
                                                text: "msg_save_and_proceed".tr,
                                                shape: ButtonShape.CustomBorderBL10,
                                                padding: ButtonPadding.PaddingAll16,
                                                fontStyle: ButtonFontStyle.MulishRomanExtraBold1516,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                    child: Padding(
                      padding: getPadding(left: 30, top: 34, right: 97),
                      child: Row(
                        children: [
                          Container(
                            height: getSize(31),
                            width: getSize(31),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                CustomImageView(
                                  svgPath: ImageConstant.imgCloseGreen800,
                                  height: getSize(31),
                                  width: getSize(31),
                                  alignment: Alignment.center,
                                ),
                                CustomImageView(
                                  svgPath: ImageConstant.imgLocationGreen50,
                                  height: getVerticalSize(15),
                                  width: getHorizontalSize(11),
                                  alignment: Alignment.center,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: getPadding(left: 15, top: 4, bottom: 4),
                            child: Text(
                              "Shipping Address".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular1405,
                            ),
                          ),
                          Spacer(),
                          CustomImageView(
                            svgPath: ImageConstant.imgShapeBlack900,
                            height: getVerticalSize(7),
                            width: getHorizontalSize(3),
                            margin: getMargin(top: 12, bottom: 12),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      onTapOrderHistroy();
                    },
                    child: Padding(
                      padding: getPadding(left: 30, top: 34, right: 97),
                      child: Row(children: [
                        Container(
                            height: getSize(31),
                            width: getSize(31),
                            child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  CustomImageView(
                                      svgPath:
                                      ImageConstant.imgCloseGreen800,
                                      height: getSize(31),
                                      width: getSize(31),
                                      alignment: Alignment.center),
                                  CustomImageView(
                                      svgPath: ImageConstant.imgClock,
                                      height: getVerticalSize(15),
                                      width: getHorizontalSize(11),
                                      alignment: Alignment.center)
                                ])),
                        Padding(
                            padding:
                            getPadding(left: 15, top: 4, bottom: 4),
                            child: Text("Order History".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsRegular1405)),
                        Spacer(),
                        CustomImageView(
                            svgPath: ImageConstant.imgShapeBlack900,
                            height: getVerticalSize(7),
                            width: getHorizontalSize(3),
                            margin: getMargin(top: 12, bottom: 12))
                      ]),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      onTapTrackOrder();
                    },
                    child: Padding(
                      padding: getPadding(left: 30, top: 34, right: 97),
                      child: Row(children: [
                        Container(
                            height: getSize(31),
                            width: getSize(31),
                            child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  CustomImageView(
                                      svgPath:
                                      ImageConstant.imgCloseGreen800,
                                      height: getSize(31),
                                      width: getSize(31),
                                      alignment: Alignment.center),
                                  CustomImageView(
                                      svgPath: ImageConstant.imgTrashGreen50,
                                      height: getVerticalSize(15),
                                      width: getHorizontalSize(11),
                                      alignment: Alignment.center)
                                ])),
                        Padding(
                            padding:
                            getPadding(left: 15, top: 4, bottom: 4),
                            child: Text("Track Order".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsRegular1405)),
                        Spacer(),
                        CustomImageView(
                            svgPath: ImageConstant.imgShapeBlack900,
                            height: getVerticalSize(7),
                            width: getHorizontalSize(3),
                            margin: getMargin(top: 12, bottom: 12))
                      ]),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      onTapNotification();
                    },
                    child: Padding(
                      padding: getPadding(left: 30, top: 34, right: 97),
                      child: Row(children: [
                        Container(
                            height: getSize(31),
                            width: getSize(31),
                            child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  CustomImageView(
                                      svgPath:
                                      ImageConstant.imgCloseGreen800,
                                      height: getSize(31),
                                      width: getSize(31),
                                      alignment: Alignment.center),
                                  CustomImageView(
                                      svgPath: ImageConstant.imgNotificationGreen50,
                                      height: getVerticalSize(15),
                                      width: getHorizontalSize(11),
                                      alignment: Alignment.center)
                                ])),
                        Padding(
                            padding:
                            getPadding(left: 15, top: 4, bottom: 4),
                            child: Text("Notifications".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsRegular1405)),
                        Spacer(),
                        CustomImageView(
                            svgPath: ImageConstant.imgShapeBlack900,
                            height: getVerticalSize(7),
                            width: getHorizontalSize(3),
                            margin: getMargin(top: 12, bottom: 12))
                      ]),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      onTapCards();
                    },
                    child: Padding(
                      padding: getPadding(left: 30, top: 34, right: 97),
                      child: Row(children: [
                        Container(
                            height: getSize(31),
                            width: getSize(31),
                            child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  CustomImageView(
                                      svgPath:
                                      ImageConstant.imgCloseGreen800,
                                      height: getSize(31),
                                      width: getSize(31),
                                      alignment: Alignment.center),
                                  CustomImageView(
                                      svgPath: ImageConstant.imgFolderGreen50,
                                      height: getVerticalSize(15),
                                      width: getHorizontalSize(11),
                                      alignment: Alignment.center)
                                ])),
                        Padding(
                            padding:
                            getPadding(left: 15, top: 4, bottom: 4),
                            child: Text("Cards".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsRegular1405)),
                        Spacer(),
                        CustomImageView(
                            svgPath: ImageConstant.imgShapeBlack900,
                            height: getVerticalSize(7),
                            width: getHorizontalSize(3),
                            margin: getMargin(top: 12, bottom: 12))
                      ]),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      onTapSetting();
                    },
                    child: Padding(
                      padding: getPadding(left: 30, top: 34, right: 97),
                      child: Row(children: [
                        Container(
                            height: getSize(31),
                            width: getSize(31),
                            child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  CustomImageView(
                                      svgPath:
                                      ImageConstant.imgCloseGreen800,
                                      height: getSize(31),
                                      width: getSize(31),
                                      alignment: Alignment.center),
                                  CustomImageView(
                                      svgPath: ImageConstant.imgSettings,
                                      height: getVerticalSize(15),
                                      width: getHorizontalSize(11),
                                      alignment: Alignment.center)
                                ])),
                        Padding(
                            padding:
                            getPadding(left: 15, top: 4, bottom: 4),
                            child: Text("Settings".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsRegular1405)),
                        Spacer(),
                        CustomImageView(
                            svgPath: ImageConstant.imgShapeBlack900,
                            height: getVerticalSize(7),
                            width: getHorizontalSize(3),
                            margin: getMargin(top: 12, bottom: 12))
                      ]),
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
  onTapTrackOrder() {
    Get.toNamed(
      AppRoutes.iphone14FiftynineScreen,
    );
  }
  onTapSetting() {
    Get.toNamed(
      AppRoutes.iphone14SixtyfiveScreen,
    );
  }
  onTapCards() {
    Get.toNamed(
      AppRoutes.iphone14SixtynineScreen,
    );
  }
  onTapNotification() {
    Get.toNamed(
      AppRoutes.iphone14SixtyeightScreen,
    );
  }
  onTapRowlocation() {
    Get.toNamed(AppRoutes.iphone14114Screen);
  }
  onTapOrderHistroy() {
    Get.toNamed(AppRoutes.iphone14SixtyoneScreen);
  }

  onTapAccount() {
    Get.back(
      // AppRoutes.iphone14FiftythreeScreen,
    );
  }

  onTapRowclose() {
    Get.toNamed(
      AppRoutes.iphone14SixtysevenScreen,
    );
  }
}

//
// Expanded(
// child: Padding(
// padding: getPadding(left: 30, top: 37, right: 97),
// child: Obx(() => ListView.separated(
// physics: BouncingScrollPhysics(),
// shrinkWrap: true,
// separatorBuilder: (context, index) {
// return SizedBox(
// height: getVerticalSize(37));
// },
// itemCount: controller.iphone14SixtysixModelObj
//     .value.listlocationItemList.value.length,
// itemBuilder: (context, index) {
// ListlocationItemModel model = controller
//     .iphone14SixtysixModelObj
//     .value
//     .listlocationItemList
//     .value[index];
// return ListlocationItemWidget(model,
// onTapRowlocation: () {
// onTapRowlocation();
// });
// }))))
