import 'controller/iphone_14_114_controller.dart';
import 'package:e_commerce/core/app_export.dart';
import 'package:e_commerce/core/utils/validation_functions.dart';
import 'package:e_commerce/widgets/custom_button.dart';
import 'package:e_commerce/widgets/custom_icon_button.dart';
import 'package:e_commerce/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class Iphone14114Screen extends GetWidget<Iphone14114Controller> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.whiteA700,
        body: Form(
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
                          controller: controller.addressController,
                          hintText: "lbl_address_line_1".tr,
                          margin: getMargin(
                            top: 17,
                          ),
                        ),
                        CustomTextFormField(
                          focusNode: FocusNode(),
                          autofocus: true,
                          controller: controller.addressoneController,
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
                                  controller: controller.pincodeController,
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
                          controller: controller.nameController,
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
                          controller: controller.landmarkController,
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
  }
}
