import 'dart:developer';

import 'package:e_commerce/controller/provider/common_provider.dart';
import 'package:provider/provider.dart';

import 'controller/sign_up_otp_controller.dart';
import 'package:e_commerce/core/app_export.dart';
import 'package:e_commerce/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class SignUpOtpScreen extends StatefulWidget {
  const SignUpOtpScreen({super.key});
  @override
  State<SignUpOtpScreen> createState() => _SignUpOtpScreenState();
}

class _SignUpOtpScreenState extends State<SignUpOtpScreen> {
  TextEditingController otpFiled1 = TextEditingController();
  TextEditingController otpFiled2 = TextEditingController();
  TextEditingController otpFiled3 = TextEditingController();
  TextEditingController otpFiled4 = TextEditingController();

  // SignUpOtpController controller = Get.put(SignUpOtpController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.green900,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(left: 20, top: 30, right: 20, bottom: 30),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomIconButton(
                    height: 50,
                    width: 50,
                    shape: IconButtonShape.CircleBorder25,
                    onTap: () {
                      onTapBtnArrowleft();
                    },
                    child:
                        CustomImageView(svgPath: ImageConstant.imgArrowleft)),
                Container(
                    width: getHorizontalSize(301),
                    margin: getMargin(left: 10, right: 38),
                    child: Text("msg_enter_the_otp_sent".tr,
                        maxLines: null,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtMulishRomanBlack30)),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      OtpField(
                        field: otpFiled1,
                      ),
                      OtpField(
                        field: otpFiled2,
                      ),
                      OtpField(
                        field: otpFiled3,
                      ),
                      OtpField(
                        field: otpFiled4,
                      ),
                    ],
                  ),
                ),
                // Padding(
                //     padding: getPadding(left: 10, top: 40, right: 66),
                //     child: Obx(() => PinCodeTextField(
                //         appContext: context,
                //         // controller: controller.otpController.value,
                //         length: 4,
                //         obscureText: false,
                //         obscuringCharacter: '*',
                //         keyboardType: TextInputType.number,
                //         autoDismissKeyboard: true,
                //         enableActiveFill: true,
                //         inputFormatters: [
                //           FilteringTextInputFormatter.digitsOnly
                //         ],
                //         onChanged: (value) {},
                //         pinTheme: PinTheme(
                //             fieldHeight: getHorizontalSize(46),
                //             fieldWidth: getHorizontalSize(46),
                //             shape: PinCodeFieldShape.box,
                //             borderRadius:
                //                 BorderRadius.circular(getHorizontalSize(6)),
                //             selectedFillColor: ColorConstant.whiteA700,
                //             activeFillColor: ColorConstant.whiteA700,
                //             inactiveFillColor: ColorConstant.whiteA700,
                //             inactiveColor: ColorConstant.fromHex("#1212121D"),
                //             selectedColor: ColorConstant.fromHex("#1212121D"),
                //             activeColor: ColorConstant.fromHex("#1212121D"))))),
                Padding(
                    padding: getPadding(left: 40, top: 10),
                    child: Text("msg_enter_4_digit".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtMulishItalicLight13)),
                Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: GestureDetector(
                    onTap: () {
                      // onTaphome();
                      String otp = otpFiled1.text + otpFiled2.text+otpFiled3.text + otpFiled4.text;
                      log(otp,name: 'otp');
                      Provider.of<CommonProvider>(context,listen: false)
                          .otpProvider(otp, context);
                    },
                    child: Center(
                      child: Container(
                        height: 40,
                        width: 160,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Center(
                            child: Text(
                          "Verify".tr,
                        )),
                      ),
                    ),
                  ),
                ),
                Align(
                    alignment: Alignment.center,
                    child: Padding(
                        padding: getPadding(top: 24),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                  padding: getPadding(top: 1),
                                  child: Text("lbl_30_sec".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtMulishItalicMedium14)),
                              Padding(
                                  padding: getPadding(left: 10, bottom: 1),
                                  child: Text("lbl_resend_otp".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtMulishItalicExtraBlack14
                                          .copyWith(
                                              decoration:
                                                  TextDecoration.underline)))
                            ]))),
                Align(
                    alignment: Alignment.center,
                    child: Padding(
                        padding: getPadding(top: 25),
                        child: Text("msg_edit_phone_number".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtMulishItalicExtraBlack14
                                .copyWith(
                                    decoration: TextDecoration.underline)))),
                Spacer(),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(bottom: 30),
                    child: Text(
                      "msg_terms_and_conditions".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtMulishItalicBlack14
                          .copyWith(decoration: TextDecoration.underline),
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }

  onTapBtnArrowleft() {
    Get.back();
  }

  onTaphome() {
    Get.toNamed(AppRoutes.iphone14117Container1Screen);
  }
}

class OtpField extends StatelessWidget {
  OtpField({
    super.key,
    required this.field,
  });

  dynamic field;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 45,
      child: TextField(
        controller: field,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
          if (value.isEmpty) {
            FocusScope.of(context).previousFocus();
          }
        },
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        decoration: const InputDecoration(
            fillColor: Colors.white,
            filled: true,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              borderSide: BorderSide(color: Color.fromARGB(255, 123, 230, 219)),
            ),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)))),
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly,
        ],
      ),
    );
  }
}
