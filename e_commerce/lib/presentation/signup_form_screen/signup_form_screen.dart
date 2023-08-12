import 'dart:developer';

import 'package:e_commerce/controller/provider/common_provider.dart';
import 'package:provider/provider.dart';

import 'controller/signup_form_controller.dart';
import 'package:e_commerce/core/app_export.dart';
import 'package:e_commerce/core/utils/validation_functions.dart';
import 'package:e_commerce/widgets/custom_button.dart';
import 'package:e_commerce/widgets/custom_checkbox.dart';
import 'package:e_commerce/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SignupFormScreen extends StatefulWidget {
  @override
  State<SignupFormScreen> createState() => _SignupFormScreenState();
}

class _SignupFormScreenState extends State<SignupFormScreen> {
  // SignupFormController controller = Get.put(SignupFormController());
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController fullnameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  bool isGenderMale = false;
  bool isGenderFemale = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.green900,
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomImageView(
                      svgPath: ImageConstant.imgAirplaneWhiteA700,
                      height: getVerticalSize(31),
                      width: getHorizontalSize(50),
                      margin: getMargin(left: 20, top: 20)),
                  Container(
                      width: getHorizontalSize(280),
                      margin: getMargin(left: 30, top: 34, right: 79),
                      child: Text("msg_let_s_create_your".tr,
                          maxLines: null,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtMulishRomanBlack30)),
                  Expanded(
                    child: Container(
                      margin: getMargin(top: 30),
                      padding: getPadding(all: 40),
                      decoration: AppDecoration.fillWhiteA700.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderTL30),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomTextFormField(
                              controller: fullnameController,
                              focusNode: FocusNode(),
                              autofocus: true,
                              // controller: controller.fullnameController,
                              hintText: "lbl_full_name".tr,
                              fontStyle:
                                  TextFormFieldFontStyle.MulishRomanBold15,
                              validator: (value) {
                                if (!isText(value)) {
                                  return "Please enter valid text";
                                }
                                return null;
                              }),
                          CustomTextFormField(
                              controller: emailController,
                              focusNode: FocusNode(),
                              autofocus: true,
                              // controller: controller.emailController,
                              hintText: "lbl_email".tr,
                              margin: getMargin(top: 30),
                              fontStyle:
                                  TextFormFieldFontStyle.MulishRomanBold15,
                              textInputType: TextInputType.emailAddress,
                              validator: (value) {
                                if (value == null ||
                                    (!isValidEmail(value, isRequired: true))) {
                                  return "Please enter valid email";
                                }
                                return null;
                              }),
                          Padding(
                              padding: getPadding(left: 10, top: 30),
                              child: Text("lbl_gender".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtMulishRomanBold15)),
                          Padding(
                            padding: getPadding(top: 9),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                      child: InkWell(
                                    onTap: () {
                                      isGenderMale = true;
                                      isGenderFemale = !isGenderMale;
                                      setState(() {});
                                      log("$isGenderFemale     , $isGenderMale");
                                    },
                                    child: Container(
                                        margin: getMargin(right: 5),
                                        padding: getPadding(
                                            left: 10,
                                            top: 9,
                                            right: 10,
                                            bottom: 9),
                                        decoration: !isGenderMale
                                            ? BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: ColorConstant.whiteA700,
                                                border: Border.all(
                                                  color: ColorConstant.black900,
                                                  width: getHorizontalSize(
                                                    1,
                                                  ),
                                                ),
                                              )
                                            : BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: ColorConstant.green900,
                                                border: Border.all(
                                                  color: ColorConstant.black900,
                                                  width: getHorizontalSize(
                                                    1,
                                                  ),
                                                ),
                                              ),
                                        child: Row(children: [
                                          Card(
                                              clipBehavior: Clip.antiAlias,
                                              elevation: 0,
                                              margin: EdgeInsets.all(0),
                                              color: ColorConstant.whiteA700,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder10),
                                              child: Container(
                                                  height: getSize(20),
                                                  width: getSize(20),
                                                  padding: getPadding(all: 4),
                                                  decoration: AppDecoration
                                                      .fillWhiteA700
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder10),
                                                  child: Stack(children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgMale1364,
                                                        height: getSize(12),
                                                        width: getSize(12),
                                                        alignment:
                                                            Alignment.center)
                                                  ]))),
                                          Padding(
                                              padding:
                                                  getPadding(left: 6, top: 1),
                                              child: Text("lbl_male".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtMulishRomanBold15Black900))
                                        ])),
                                  )),
                                  Expanded(
                                      child: InkWell(
                                    onTap: () {
                                      isGenderFemale = true;
                                      isGenderMale = !isGenderFemale;
                                      setState(() {});
                                      log("$isGenderFemale     , $isGenderMale");
                                    },
                                    child: Container(
                                        margin: getMargin(right: 5),
                                        padding: getPadding(
                                            left: 10,
                                            top: 9,
                                            right: 10,
                                            bottom: 9),
                                        decoration: isGenderMale
                                            ? BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: ColorConstant.whiteA700,
                                                border: Border.all(
                                                  color: ColorConstant.black900,
                                                  width: getHorizontalSize(
                                                    1,
                                                  ),
                                                ),
                                              )
                                            : BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: ColorConstant.green900,
                                                border: Border.all(
                                                  color: ColorConstant.black900,
                                                  width: getHorizontalSize(
                                                    1,
                                                  ),
                                                ),
                                              ),
                                        child: Row(children: [
                                          Card(
                                              clipBehavior: Clip.antiAlias,
                                              elevation: 0,
                                              margin: EdgeInsets.all(0),
                                              color: ColorConstant.whiteA700,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder10),
                                              child: Container(
                                                  height: getSize(20),
                                                  width: getSize(20),
                                                  padding: getPadding(all: 4),
                                                  decoration: AppDecoration
                                                      .fillWhiteA700
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder10),
                                                  child: Stack(children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgLightbulb,
                                                        height: getSize(12),
                                                        width: getSize(12),
                                                        alignment:
                                                            Alignment.center)
                                                  ]))),
                                          Padding(
                                              padding:
                                                  getPadding(left: 6, top: 1),
                                              child: Text("lbl_female".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtMulishRomanBold15Black900))
                                        ])),
                                  )),
                                ]),
                          ),
                          Spacer(),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              autofocus: true,
                              // controller: controller.groupeightyoneController,
                              hintText: "msg_enter_referral_code".tr,
                              variant: TextFormFieldVariant.FillAmber30066,
                              padding: TextFormFieldPadding.PaddingT15,
                              fontStyle:
                                  TextFormFieldFontStyle.MulishRomanBold15,
                              textInputAction: TextInputAction.done,
                              prefix: Container(
                                  margin: getMargin(
                                      left: 20, top: 11, right: 10, bottom: 11),
                                  child: CustomImageView(
                                      svgPath:
                                          ImageConstant.imgTicketAmber300)),
                              prefixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(50))),
                          Padding(
                            padding: const EdgeInsets.only(left: 40, top: 60),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.check_box,
                                  color: Colors.green,
                                ),
                                Text(
                                  "msg_i_agree_to_the_terms".tr,
                                  style: TextStyle(),
                                ),
                              ],
                            ),
                          ),
                          CustomButton(
                              height: getVerticalSize(50),
                              text: "lbl_register".tr,
                              margin: getMargin(left: 5, top: 3, right: 5),
                              padding: ButtonPadding.PaddingAll13,
                              fontStyle: ButtonFontStyle.MulishItalicBlack20,
                              onTap: () {
                                // onTapRegister();
                                Provider.of<CommonProvider>(context,
                                        listen: false)
                                    .registerNewUser(
                                  fullnameController.text,
                                  emailController.text,
                                  isGenderFemale ? 'female' : 'male',
                                  context,
                                );
                              }),
                        ],
                      ),
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
  }

  onTapRegister() {
    Get.toNamed(
      AppRoutes.signUpOtpScreen,
    );
  }
}
