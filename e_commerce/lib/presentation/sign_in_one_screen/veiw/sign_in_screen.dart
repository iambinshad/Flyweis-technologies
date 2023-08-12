import 'dart:developer';

import 'package:country_pickers/country_pickers.dart';
import 'package:e_commerce/controller/provider/common_provider.dart';
import 'package:e_commerce/presentation/sign_up_one_screen/sign_up_one_screen.dart';
import 'package:e_commerce/widgets/custom_button.dart';
import 'package:provider/provider.dart';

import 'package:country_pickers/country.dart';
import 'package:e_commerce/core/app_export.dart';
import 'package:e_commerce/widgets/custom_phone_number.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SignInOneScreen extends StatefulWidget {
  @override
  State<SignInOneScreen> createState() => _SignInOneScreenState();
}

class _SignInOneScreenState extends State<SignInOneScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ColorConstant.green900,
      body: Form(
        key: _formKey,
        child: Container(
          width: double.maxFinite,
          padding: getPadding(all: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                  svgPath: ImageConstant.imgAirplaneWhiteA700,
                  height: getVerticalSize(31),
                  width: getHorizontalSize(50),
                  alignment: Alignment.centerLeft),
              Spacer(),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                      width: getHorizontalSize(226),
                      margin: getMargin(left: 20),
                      child: Text("msg_enter_your_mobile".tr,
                          maxLines: null,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtMulishRomanBlack30))),
              Padding(
                padding: const EdgeInsets.only(top: 25.0),
                child: GestureDetector(
                  onTap: () {
                    onTapImgFacebook();
                  },
                  child: new Container(
                    height: 50,
                    padding: const EdgeInsets.only(left: 12.0, top: 2),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    child: TextField(
                      controller: phoneController,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "|   Enter Mobile  Number",
                          prefix: Text('44  ')
                          // prefix:  CountryPickerDropdown(
                          //   initialValue: 'in',
                          //   itemBuilder: _buildDropdownItem,
                          //   onValuePicked: (Country country) {
                          //     print("${country.name}");
                          //   },
                          // ),
                          ),
                      // onChanged: (value){
                      //   // this.phoneNo=value;
                      // },
                    ),
                  ),
                ),
              ),
              // Container(
              //   height: 30,
              //   color: Colors.white,
              //   width: 200,
              // ),
              // Padding(
              //     padding: getPadding(left: 10, top: 40, right: 10),
              //     child: Obx(() => CustomPhoneNumber(
              //         country: controller.selectedCountry.value,
              //         controller: controller.phoneNumberController,
              //         onTap: (Country country) {
              //           controller.selectedCountry.value = country;
              //         }))),
              Padding(
                  padding: getPadding(top: 21),
                  child: Text("msg_you_ll_receive_4_digit".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtMulishRomanExtraBold14)),
              Padding(
                padding: getPadding(left: 15, top: 28, right: 16),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Padding(
                      padding: getPadding(top: 8, bottom: 8),
                      child: SizedBox(
                          width: getHorizontalSize(136),
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: ColorConstant.whiteA700))),
                  Padding(
                      padding: getPadding(left: 15),
                      child: Text("lbl_or".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtMulishRomanExtraBold14)),
                  Padding(
                    padding: getPadding(top: 8, bottom: 8),
                    child: SizedBox(
                      width: getHorizontalSize(151),
                      child: Divider(
                        height: getVerticalSize(1),
                        thickness: getVerticalSize(1),
                        color: ColorConstant.whiteA700,
                        indent: getHorizontalSize(15),
                      ),
                    ),
                  ),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: GestureDetector(
                  onTap: () async {
                    await Provider.of<CommonProvider>(context, listen: false)
                        .loginUserProvider(phoneController.text, context);
                  },
                  child: Container(
                    height: 40,
                    width: 160,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Center(
                        child: Text(
                      "Login",
                    )),
                  ),
                ),
              ),
              SizedBox(
                height: getSize(15),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "don't have an account",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    width: getSize(10),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUpOneScreen(),
                          ));
                    },
                    child: Text('SignUp',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
              // CustomButton(
              //     height: getVerticalSize(50),
              //     text: "lbl_register".tr,
              //     margin: getMargin(left: 5, top: 30, right: 5),
              //     padding: ButtonPadding.PaddingAll13,
              //     fontStyle: ButtonFontStyle.MulishRomanBold1417,
              //     onTap: () {
              //       // onTapRegister();
              //     }),
              Padding(
                  padding: getPadding(top: 41),
                  child: Text("msg_login_with_social".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtMulishRomanExtraBold14)),
              Padding(
                  padding: getPadding(top: 18),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgFacebook,
                          height: getSize(39),
                          width: getSize(39),
                          onTap: () {
                            onTapImgFacebook();
                          },
                        ),
                        Container(
                            height: getSize(39),
                            width: getSize(39),
                            margin: getMargin(left: 40),
                            child:
                                Stack(alignment: Alignment.center, children: [
                              CustomImageView(
                                  svgPath:
                                      ImageConstant.imgSettingsWhiteA70039x39,
                                  height: getSize(39),
                                  width: getSize(39),
                                  alignment: Alignment.center,
                                  onTap: () {
                                    onTapImgSettings();
                                  }),
                              CustomImageView(
                                  svgPath: ImageConstant.imgGoogle,
                                  height: getSize(19),
                                  width: getSize(19),
                                  alignment: Alignment.center)
                            ]))
                      ])),
              Container(
                  width: getHorizontalSize(162),
                  margin: getMargin(top: 40, bottom: 100),
                  child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "msg_by_clicking_i_accept2".tr,
                            style: TextStyle(
                                color: ColorConstant.whiteA700,
                                fontSize: getFontSize(14),
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w800)),
                        TextSpan(
                            text: "msg_terms_of_services".tr,
                            style: TextStyle(
                                color: ColorConstant.whiteA700,
                                fontSize: getFontSize(14),
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w800,
                                decoration: TextDecoration.underline))
                      ]),
                      textAlign: TextAlign.center))
            ],
          ),
        ),
      ),
    );
  }

  onTapImgFacebook() {
    Get.toNamed(
      AppRoutes.signupFormScreen,
    );
  }

  onTapImgSettings() {
    Get.toNamed(
      AppRoutes.signupFormScreen,
    );
  }

  Widget _buildDropdownItem(Country country) => Container(
        child: Row(
          children: <Widget>[
            // CountryPickerUtils.getDefaultFlagImage(country),
            SizedBox(
              width: 0.0,
            ),
            Text("+${country.phoneCode}(${country.isoCode})"),
          ],
        ),
      );
}
