import 'controller/iphone_14_eightyfour_controller.dart';
import 'package:e_commerce/core/app_export.dart';
import 'package:e_commerce/widgets/custom_button.dart';
import 'package:e_commerce/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class Iphone14EightyfourScreen extends GetWidget<Iphone14EightyfourController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.whiteA700,
        body: SingleChildScrollView(
          child: Container(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              CustomButton(
                  margin: getMargin(right: 255),
                  height: getVerticalSize(55),
                  text: "lbl_review".tr,
                  variant: ButtonVariant.FillWhiteA700,
                  shape: ButtonShape.Square,
                  prefixWidget: Container(
                      margin: getMargin(right: 15),
                      child: CustomImageView(
                          svgPath: ImageConstant.imgArrowleftBlack900)),
                  onTap: () {
                    onTapReview();
                  }),
              Container(
                margin: getMargin(left: 20, top: 40, right: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.green.shade100, width: 2)),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        // width: double.maxFinite,
                        child: Container(
                          width: getHorizontalSize(350),
                          padding:
                              getPadding(left: 9, top: 8, right: 9, bottom: 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgVector79x86,
                                            height: getVerticalSize(93),
                                            width: getHorizontalSize(96),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(18))),
                                        Padding(
                                          padding: getPadding(
                                              left: 12, top: 5, bottom: 18),
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text("lbl_cauliflower".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsRegular147),
                                                Padding(
                                                  padding: getPadding(top: 18),
                                                  child: Text("lbl_565_0".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsRegular147),
                                                ),
                                              ]),
                                        ),
                                      ]),
                                ),
                                CustomImageView(
                                    svgPath: ImageConstant.imgGroupGreenA100,
                                    height: getVerticalSize(36),
                                    width: getHorizontalSize(303),
                                    margin: getMargin(top: 28)),
                                CustomTextFormField(
                                    focusNode: FocusNode(),
                                    autofocus: true,
                                    controller:
                                        controller.reviewpromptController,
                                    hintText: "msg_write_your_review".tr,
                                    margin: getMargin(
                                        left: 8, top: 38, right: 9, bottom: 15),
                                    variant: TextFormFieldVariant.FillGreen50,
                                    padding: TextFormFieldPadding.PaddingT114,
                                    fontStyle: TextFormFieldFontStyle
                                        .PoppinsMedium1654,
                                    textInputAction: TextInputAction.done,
                                    maxLines: 2)
                              ]),
                        ),
                      ),
                    ]),
              ),
              CustomButton(
                  height: getVerticalSize(55),
                  width: getHorizontalSize(166),
                  text: "lbl_submit".tr,
                  margin: getMargin(top: 75, bottom: 5),
                  shape: ButtonShape.CustomBorderBL10,
                  padding: ButtonPadding.PaddingAll13,
                  fontStyle: ButtonFontStyle.PoppinsMedium1654,
                  onTap: () {
                    onTapSubmit();
                  }),
            ]),
          ),
        ),
      ),
    );
  }

  onTapReview() {
    Get.toNamed(
      AppRoutes.iphone14SixtyoneScreen,
    );
  }

  onTapSubmit() {
    Get.toNamed(
      AppRoutes.iphone14SixtyoneScreen,
    );
  }
}
