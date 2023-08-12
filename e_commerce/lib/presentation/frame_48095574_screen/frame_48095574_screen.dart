import 'controller/frame_48095574_controller.dart';
import 'package:e_commerce/core/app_export.dart';
import 'package:e_commerce/widgets/app_bar/appbar_image.dart';
import 'package:e_commerce/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class Frame48095574Screen extends GetWidget<Frame48095574Controller> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(
            53,
          ),
          title: Padding(
            padding: getPadding(
              left: 10,
            ),
            child: Text(
              "lbl_what_is_e4u".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtPoppinsMedium14Gray800.copyWith(
                letterSpacing: getHorizontalSize(
                  0.28,
                ),
              ),
            ),
          ),
          actions: [
            AppbarImage(
              height: getVerticalSize(
                10,
              ),
              width: getHorizontalSize(
                5,
              ),
              svgPath: ImageConstant.imgArrowrightDeepOrange500,
              margin: getMargin(
                left: 20,
                top: 22,
                right: 20,
                bottom: 21,
              ),
            ),
          ],
        ),
        body: Container(
          width: getHorizontalSize(
            370,
          ),
          padding: getPadding(
            left: 10,
            top: 3,
            right: 10,
            bottom: 3,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Divider(
                height: getVerticalSize(
                  1,
                ),
                thickness: getVerticalSize(
                  1,
                ),
                color: ColorConstant.gray800,
              ),
              Padding(
                padding: getPadding(
                  top: 20,
                  right: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "msg_how_to_place_a_booking".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsMedium14Gray800.copyWith(
                        letterSpacing: getHorizontalSize(
                          0.28,
                        ),
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgArrowrightDeepOrange500,
                      height: getVerticalSize(
                        10,
                      ),
                      width: getHorizontalSize(
                        5,
                      ),
                      margin: getMargin(
                        top: 3,
                        bottom: 7,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 17,
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
                  top: 19,
                  right: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: getHorizontalSize(
                        288,
                      ),
                      child: Text(
                        "msg_can_i_re_book_the".tr,
                        maxLines: null,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsMedium14Gray800.copyWith(
                          letterSpacing: getHorizontalSize(
                            0.28,
                          ),
                        ),
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgArrowrightDeepOrange500,
                      height: getVerticalSize(
                        10,
                      ),
                      width: getHorizontalSize(
                        5,
                      ),
                      margin: getMargin(
                        left: 45,
                        top: 5,
                        bottom: 25,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 11,
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
                  top: 20,
                  right: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "msg_how_to_book_my_preferred".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsMedium14Gray800.copyWith(
                        letterSpacing: getHorizontalSize(
                          0.28,
                        ),
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgArrowrightDeepOrange500,
                      height: getVerticalSize(
                        10,
                      ),
                      width: getHorizontalSize(
                        5,
                      ),
                      margin: getMargin(
                        top: 4,
                        bottom: 6,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 18,
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
                  top: 19,
                  right: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: getHorizontalSize(
                        286,
                      ),
                      child: Text(
                        "msg_do_i_have_to_order".tr,
                        maxLines: null,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsMedium14Gray800.copyWith(
                          letterSpacing: getHorizontalSize(
                            0.28,
                          ),
                        ),
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgArrowrightDeepOrange500,
                      height: getVerticalSize(
                        10,
                      ),
                      width: getHorizontalSize(
                        5,
                      ),
                      margin: getMargin(
                        left: 47,
                        top: 5,
                        bottom: 29,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 7,
                  bottom: 5,
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
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: getPadding(
            left: 10,
            right: 20,
            bottom: 19,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "msg_dose_e4u_charges".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtPoppinsMedium14Gray800.copyWith(
                  letterSpacing: getHorizontalSize(
                    0.28,
                  ),
                ),
              ),
              CustomImageView(
                svgPath: ImageConstant.imgArrowrightDeepOrange500,
                height: getVerticalSize(
                  10,
                ),
                width: getHorizontalSize(
                  5,
                ),
                margin: getMargin(
                  top: 4,
                  bottom: 7,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
